execute_process(COMMAND "/home/nic/catkin_wp/build/laser_geometry/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/nic/catkin_wp/build/laser_geometry/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
