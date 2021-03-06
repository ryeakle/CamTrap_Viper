#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>
#include <time.h>

#include <sys/statvfs.h>
#include <phidget21.h>
#include "ICT_Viper/CvService.h"


int CCONV AttachHandler(CPhidgetHandle MC, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (MC, &name);
	CPhidget_getSerialNumber(MC, &serialNo);
	printf("%s %10d attached!\n", name, serialNo);

	return 0;
}

int CCONV DetachHandler(CPhidgetHandle MC, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (MC, &name);
	CPhidget_getSerialNumber(MC, &serialNo);
	printf("%s %10d detached!\n", name, serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle MC, void *userptr, int ErrorCode, const char *Description)
{
	printf("Error handled. %d - %s\n", ErrorCode, Description);
	return 0;
}

void hvCallback(const std_msgs::String::ConstPtr& msg)
{
	//Do stuff when the hypervisor says so
}

void comCallback(const std_msgs::String::ConstPtr& msg)
{
	//Do stuff when the com node says so
}


void motor_callback(const std_msgs::String::ConstPtr& msg){
	ROS_INFO("Motor Move Request:");
	int result;
	const char *err;

	//Declare a motor control handle
	CPhidgetMotorControlHandle motoControl = 0;
	
	//create the motor control object
	CPhidgetMotorControl_create(&motoControl);

	CPhidget_set_OnAttach_Handler((CPhidgetHandle)motoControl, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)motoControl, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)motoControl, ErrorHandler, NULL);
	
	CPhidget_open((CPhidgetHandle)motoControl, -1);

	printf("Waiting for MotorControl to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)motoControl, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return;
	}

	CPhidgetMotorControl_setAcceleration (motoControl, 0, 50.00);
	CPhidgetMotorControl_setVelocity (motoControl, 0, 100.00);
	
	//Wait for some time... 
	ros::Duration(1).sleep();
	
	CPhidgetMotorControl_setAcceleration (motoControl, 0,0);
	CPhidgetMotorControl_setVelocity (motoControl, 0, 0);

	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)motoControl);
	CPhidget_delete((CPhidgetHandle)motoControl);
}

int main(int argc, char** argv){
	ros::init(argc, argv, "pan");
	ros::NodeHandle n;
	ROS_INFO("Is the correct motor node running?");
	//connect to Hypervisor and com nodes
	ros::Subscriber hv_sub = n.subscribe("Hypervisor_Output", 10, hvCallback);	
	ros::Subscriber com_sub = n.subscribe("Com_Commands", 10, comCallback);
	
	//Open connection for Log node to connect to
	ros::Publisher pub = n.advertise<std_msgs::String>("Motor_Movement",10);
	
	//Connect to CV service
	ros::ServiceClient client = n.serviceClient<ICT_Viper::CvService>("cv_service");
	ICT_Viper::CvService srv;
	
	//Connect to motor

	int x_offset = 0;
	int result;
	const char *err;

	//Declare a motor control handle
	CPhidgetMotorControlHandle motoControl = 0;
	
	//create the motor control object
	CPhidgetMotorControl_create(&motoControl);
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)motoControl, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)motoControl, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)motoControl, ErrorHandler, NULL);
	CPhidget_open((CPhidgetHandle)motoControl, -1);

	ROS_INFO("Waiting for MotorControl to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)motoControl, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return -1;
	}
	ROS_INFO("Motor connection established!");

	while (ros::ok())
	{
	//	ROS_INFO("making service request...\n");
		srv.request.A = 0;
		if (client.call(srv))
		{
			ROS_INFO("x offset = %d\n", (int) srv.response.Coords);
			x_offset = srv.response.Coords;
			if (x_offset >= 320)
			{
				CPhidgetMotorControl_setAcceleration(motoControl, 0, 50.0);
				CPhidgetMotorControl_setVelocity(motoControl, 0, 100.0);
			}
			else
			{
				CPhidgetMotorControl_setAcceleration(motoControl, 0, -50.0);
				CPhidgetMotorControl_setVelocity(motoControl, 0, -100.0);
			}
		}
		else
		{
			ROS_ERROR("cv service call failed");
		}
	}

	//time to exit
	CPhidgetMotorControl_setAcceleration (motoControl, 0,0);
	CPhidgetMotorControl_setVelocity (motoControl, 0, 0);

	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)motoControl);
	
	//ros::spin();	

}
