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

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nic/catkin_wp/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nic/catkin_wp/build

# Include any dependencies generated for this target.
include robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/depend.make

# Include the progress variables for this target.
include robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/progress.make

# Include the compile flags for this target's objects.
include robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/flags.make

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/flags.make
robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o: /home/nic/catkin_wp/src/robot_navigation/dwb_plugins/test/velocity_iterator_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nic/catkin_wp/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o"
	cd /home/nic/catkin_wp/build/robot_navigation/dwb_plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o -c /home/nic/catkin_wp/src/robot_navigation/dwb_plugins/test/velocity_iterator_test.cpp

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.i"
	cd /home/nic/catkin_wp/build/robot_navigation/dwb_plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nic/catkin_wp/src/robot_navigation/dwb_plugins/test/velocity_iterator_test.cpp > CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.i

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.s"
	cd /home/nic/catkin_wp/build/robot_navigation/dwb_plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nic/catkin_wp/src/robot_navigation/dwb_plugins/test/velocity_iterator_test.cpp -o CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.s

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.requires:
.PHONY : robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.requires

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.provides: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.requires
	$(MAKE) -f robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/build.make robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.provides.build
.PHONY : robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.provides

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.provides.build: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o

# Object files for target vtest
vtest_OBJECTS = \
"CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o"

# External object files for target vtest
vtest_EXTERNAL_OBJECTS =

/home/nic/catkin_wp/devel/lib/dwb_plugins/vtest: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o
/home/nic/catkin_wp/devel/lib/dwb_plugins/vtest: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/build.make
/home/nic/catkin_wp/devel/lib/dwb_plugins/vtest: gtest/libgtest.so
/home/nic/catkin_wp/devel/lib/dwb_plugins/vtest: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/nic/catkin_wp/devel/lib/dwb_plugins/vtest"
	cd /home/nic/catkin_wp/build/robot_navigation/dwb_plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/build: /home/nic/catkin_wp/devel/lib/dwb_plugins/vtest
.PHONY : robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/build

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/requires: robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/test/velocity_iterator_test.cpp.o.requires
.PHONY : robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/requires

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/clean:
	cd /home/nic/catkin_wp/build/robot_navigation/dwb_plugins && $(CMAKE_COMMAND) -P CMakeFiles/vtest.dir/cmake_clean.cmake
.PHONY : robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/clean

robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/depend:
	cd /home/nic/catkin_wp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nic/catkin_wp/src /home/nic/catkin_wp/src/robot_navigation/dwb_plugins /home/nic/catkin_wp/build /home/nic/catkin_wp/build/robot_navigation/dwb_plugins /home/nic/catkin_wp/build/robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : robot_navigation/dwb_plugins/CMakeFiles/vtest.dir/depend

