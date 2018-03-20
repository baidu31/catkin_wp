# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "nav_2d_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Inav_2d_msgs:/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(nav_2d_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg" NAME_WE)
add_custom_target(_nav_2d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nav_2d_msgs" "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg" "std_msgs/Header:nav_2d_msgs/Twist2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_custom_target(_nav_2d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nav_2d_msgs" "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg" "std_msgs/Header:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg" NAME_WE)
add_custom_target(_nav_2d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nav_2d_msgs" "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg" ""
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg" NAME_WE)
add_custom_target(_nav_2d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nav_2d_msgs" "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg" ""
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg" NAME_WE)
add_custom_target(_nav_2d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nav_2d_msgs" "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg" ""
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg" NAME_WE)
add_custom_target(_nav_2d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "nav_2d_msgs" "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg" "std_msgs/Header:geometry_msgs/Pose2D"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_cpp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_cpp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_cpp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_cpp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_cpp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(nav_2d_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(nav_2d_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(nav_2d_msgs_generate_messages nav_2d_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_cpp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_cpp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_cpp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_cpp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_cpp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_cpp _nav_2d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nav_2d_msgs_gencpp)
add_dependencies(nav_2d_msgs_gencpp nav_2d_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nav_2d_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_lisp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_lisp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_lisp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_lisp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_lisp(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(nav_2d_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(nav_2d_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(nav_2d_msgs_generate_messages nav_2d_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_lisp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_lisp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_lisp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_lisp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_lisp _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_lisp _nav_2d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nav_2d_msgs_genlisp)
add_dependencies(nav_2d_msgs_genlisp nav_2d_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nav_2d_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_py(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_py(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_py(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_py(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
)
_generate_msg_py(nav_2d_msgs
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(nav_2d_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(nav_2d_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(nav_2d_msgs_generate_messages nav_2d_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2DStamped.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_py _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_py _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2D32.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_py _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D32.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_py _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_py _nav_2d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg" NAME_WE)
add_dependencies(nav_2d_msgs_generate_messages_py _nav_2d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(nav_2d_msgs_genpy)
add_dependencies(nav_2d_msgs_genpy nav_2d_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS nav_2d_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/nav_2d_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(nav_2d_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(nav_2d_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/nav_2d_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(nav_2d_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(nav_2d_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/nav_2d_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(nav_2d_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(nav_2d_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
