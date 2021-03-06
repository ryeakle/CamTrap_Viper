cmake_minimum_required(VERSION 2.8.3)
project(CamTrap_Viper)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs message_generation cv_bridge image_transport sensor_msgs)

#declare services
add_service_files(
	FILES
	CvService.srv
)

#generate services and messages
generate_messages(
	DEPENDENCIES
	std_msgs
)

#build it!
catkin_package(
	CATKIN_DEPENDS message_runtime
   INCLUDE_DIRS include
)

include_directories(include ${catkin_INCLUDE_DIRS})
include_directories(include /usr/local)
##target_link_libraries( , ${catkin_LIBRARIES})

add_executable(hypervisor src/node_hypervisor/node_hypervisor.cpp)
target_link_libraries(hypervisor ${catkin_LIBRARIES})

add_executable(webcam src/node_webcam/node_webcam.cpp)
target_link_libraries(webcam ${catkin_LIBRARIES})

add_executable(motors_ninja src/node_motors/node_motors_ninja.cpp src/node_motors/motor_controller.cpp)
target_link_libraries(motors_ninja ${catkin_LIBRARIES})
add_dependencies(motors_ninja camtrap_viper_gencpp)

#add_executable(motors_mock src/node_motors_mock/node_motors_mock.cpp)
#target_link_libraries(motors_mock ${catkin_LIBRARIES})
#add_dependencies(motors_mock camtrap_viper_gencpp)

#add_executable(cvsim src/node_cvsim/node_cvsim.cpp src/node_cvsim/cv_localizer.cpp)
#target_link_libraries(cvsim ${catkin_LIBRARIES})
#add_dependencies(cvsim camtrap_viper_gencpp)

add_executable(cv src/node_cv/node_cv.cpp include/cv_localizer.cpp)
target_link_libraries(cv ${catkin_LIBRARIES})
add_dependencies(cv camtrap_viper_gencpp)

add_executable(com src/node_com/node_com.cpp)
target_link_libraries(com ${catkin_LIBRARIES})

add_executable(log src/node_log/node_log.cpp)
target_link_libraries(log ${catkin_LIBRARIES})

find_package(OpenCV REQUIRED)
target_link_libraries(cv ${OpenCV_LIBS})
target_link_libraries(cv /usr/local/lib/libcvblob.so)
target_link_libraries(webcam ${OpenCV_LIBS})
#target_link_libraries(motors_mock phidget21)
#find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs message_generation)

#common commands for building c++ executables and libraries
#add_library(${PROJECT_NAME} src/example.cpp)
#target_link_libraries(${PROJECT_NAME} another_library)
#add_boost_directories()
#link_boost(${PROJECT_NAME} thread)
#add_executable(example examples/example.cpp)
#target_link_libraries(example ${PROJECT_NAME})
