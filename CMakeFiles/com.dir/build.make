# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viki/groovy_workspace/CamTrap_Viper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viki/groovy_workspace/CamTrap_Viper

# Include any dependencies generated for this target.
include CMakeFiles/com.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/com.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/com.dir/flags.make

CMakeFiles/com.dir/src/node_com/node_com.cpp.o: CMakeFiles/com.dir/flags.make
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: src/node_com/node_com.cpp
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: manifest.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/opencv2/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/cpp_common/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/rostime/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/roscpp_traits/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/roscpp_serialization/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/message_runtime/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/std_msgs/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/geometry_msgs/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/sensor_msgs/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/image_geometry/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/rosconsole/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/cv_bridge/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/rosgraph_msgs/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/xmlrpcpp/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/roscpp/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/message_filters/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/console_bridge/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/class_loader/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/rospack/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/roslib/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/pluginlib/package.xml
CMakeFiles/com.dir/src/node_com/node_com.cpp.o: /opt/ros/groovy/share/image_transport/package.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/viki/groovy_workspace/CamTrap_Viper/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/com.dir/src/node_com/node_com.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/com.dir/src/node_com/node_com.cpp.o -c /home/viki/groovy_workspace/CamTrap_Viper/src/node_com/node_com.cpp

CMakeFiles/com.dir/src/node_com/node_com.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/com.dir/src/node_com/node_com.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/viki/groovy_workspace/CamTrap_Viper/src/node_com/node_com.cpp > CMakeFiles/com.dir/src/node_com/node_com.cpp.i

CMakeFiles/com.dir/src/node_com/node_com.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/com.dir/src/node_com/node_com.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/viki/groovy_workspace/CamTrap_Viper/src/node_com/node_com.cpp -o CMakeFiles/com.dir/src/node_com/node_com.cpp.s

CMakeFiles/com.dir/src/node_com/node_com.cpp.o.requires:
.PHONY : CMakeFiles/com.dir/src/node_com/node_com.cpp.o.requires

CMakeFiles/com.dir/src/node_com/node_com.cpp.o.provides: CMakeFiles/com.dir/src/node_com/node_com.cpp.o.requires
	$(MAKE) -f CMakeFiles/com.dir/build.make CMakeFiles/com.dir/src/node_com/node_com.cpp.o.provides.build
.PHONY : CMakeFiles/com.dir/src/node_com/node_com.cpp.o.provides

CMakeFiles/com.dir/src/node_com/node_com.cpp.o.provides.build: CMakeFiles/com.dir/src/node_com/node_com.cpp.o

# Object files for target com
com_OBJECTS = \
"CMakeFiles/com.dir/src/node_com/node_com.cpp.o"

# External object files for target com
com_EXTERNAL_OBJECTS =

bin/com: CMakeFiles/com.dir/src/node_com/node_com.cpp.o
bin/com: /opt/ros/groovy/lib/libopencv_calib3d.so
bin/com: /opt/ros/groovy/lib/libopencv_contrib.so
bin/com: /opt/ros/groovy/lib/libopencv_core.so
bin/com: /opt/ros/groovy/lib/libopencv_features2d.so
bin/com: /opt/ros/groovy/lib/libopencv_flann.so
bin/com: /opt/ros/groovy/lib/libopencv_gpu.so
bin/com: /opt/ros/groovy/lib/libopencv_highgui.so
bin/com: /opt/ros/groovy/lib/libopencv_imgproc.so
bin/com: /opt/ros/groovy/lib/libopencv_legacy.so
bin/com: /opt/ros/groovy/lib/libopencv_ml.so
bin/com: /opt/ros/groovy/lib/libopencv_nonfree.so
bin/com: /opt/ros/groovy/lib/libopencv_objdetect.so
bin/com: /opt/ros/groovy/lib/libopencv_photo.so
bin/com: /opt/ros/groovy/lib/libopencv_stitching.so
bin/com: /opt/ros/groovy/lib/libopencv_ts.so
bin/com: /opt/ros/groovy/lib/libopencv_video.so
bin/com: /opt/ros/groovy/lib/libopencv_videostab.so
bin/com: /usr/lib/libboost_signals-mt.so
bin/com: /usr/lib/libboost_filesystem-mt.so
bin/com: /usr/lib/libboost_date_time-mt.so
bin/com: /usr/lib/libboost_system-mt.so
bin/com: /usr/lib/libboost_thread-mt.so
bin/com: CMakeFiles/com.dir/build.make
bin/com: CMakeFiles/com.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/com"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/com.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/com.dir/build: bin/com
.PHONY : CMakeFiles/com.dir/build

CMakeFiles/com.dir/requires: CMakeFiles/com.dir/src/node_com/node_com.cpp.o.requires
.PHONY : CMakeFiles/com.dir/requires

CMakeFiles/com.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/com.dir/cmake_clean.cmake
.PHONY : CMakeFiles/com.dir/clean

CMakeFiles/com.dir/depend:
	cd /home/viki/groovy_workspace/CamTrap_Viper && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper /home/viki/groovy_workspace/CamTrap_Viper/CMakeFiles/com.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/com.dir/depend

