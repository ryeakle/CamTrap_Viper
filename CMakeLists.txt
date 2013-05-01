cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
#set(ROS_BUILD_TYPE RelWithDebInfo)

rosbuild_init()

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

#uncomment if you have defined messages
rosbuild_genmsg()
#uncomment if you have defined services
rosbuild_gensrv()


rosbuild_add_executable(hypervisor src/node_hypervisor/node_hypervisor.cpp)
rosbuild_add_executable(webcam src/node_webcam/node_webcam.cpp)
#rosbuild_add_executable(motors src/node_motors/node_motors.cpp)
rosbuild_add_executable(motors_mock src/node_motors_mock/node_motors_mock.cpp)
rosbuild_add_executable(cvsim src/node_cvsim/node_cvsim.cpp src/node_cvsim/cv_localizer.cpp)
rosbuild_add_executable(com src/node_com/node_com.cpp)
rosbuild_add_executable(log src/node_log/node_log.cpp)


find_package(OpenCV REQUIRED)
target_link_libraries(cvsim ${OpenCV_LIBS})
target_link_libraries(motors_mock phidget21)
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs message_generation)

add_service_files(
	FILES
	CvService.srv
)

#common commands for building c++ executables and libraries
#rosbuild_add_library(${PROJECT_NAME} src/example.cpp)
#target_link_libraries(${PROJECT_NAME} another_library)
#rosbuild_add_boost_directories()
#rosbuild_link_boost(${PROJECT_NAME} thread)
#rosbuild_add_executable(example examples/example.cpp)
#target_link_libraries(example ${PROJECT_NAME})