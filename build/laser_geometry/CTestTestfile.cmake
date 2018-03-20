# CMake generated Testfile for 
# Source directory: /home/nic/catkin_wp/src/laser_geometry
# Build directory: /home/nic/catkin_wp/build/laser_geometry
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_laser_geometry_gtest_projection_test "/home/nic/catkin_wp/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/nic/catkin_wp/build/test_results/laser_geometry/gtest-projection_test.xml" "--return-code" "/home/nic/catkin_wp/devel/lib/laser_geometry/projection_test --gtest_output=xml:/home/nic/catkin_wp/build/test_results/laser_geometry/gtest-projection_test.xml")
ADD_TEST(_ctest_laser_geometry_nosetests_test.projection_test.py "/home/nic/catkin_wp/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/nic/catkin_wp/build/test_results/laser_geometry/nosetests-test.projection_test.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/nic/catkin_wp/build/test_results/laser_geometry" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/nic/catkin_wp/src/laser_geometry/test/projection_test.py --with-xunit --xunit-file=/home/nic/catkin_wp/build/test_results/laser_geometry/nosetests-test.projection_test.py.xml")
