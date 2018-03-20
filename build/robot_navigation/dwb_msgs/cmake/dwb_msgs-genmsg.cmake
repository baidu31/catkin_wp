# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dwb_msgs: 4 messages, 5 services")

set(MSG_I_FLAGS "-Idwb_msgs:/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Inav_2d_msgs:/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dwb_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv" "dwb_msgs/Trajectory2D:nav_2d_msgs/Twist2D:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg" "dwb_msgs/TrajectoryScore:nav_2d_msgs/Twist2D:dwb_msgs/CriticScore:dwb_msgs/Trajectory2D:std_msgs/Header:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg" "dwb_msgs/CriticScore:geometry_msgs/Pose2D:nav_2d_msgs/Twist2D:dwb_msgs/Trajectory2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv" "dwb_msgs/TrajectoryScore:dwb_msgs/LocalPlanEvaluation:dwb_msgs/CriticScore:dwb_msgs/Trajectory2D:std_msgs/Header:geometry_msgs/Pose2D:nav_2d_msgs/Path2D:nav_2d_msgs/Pose2DStamped:nav_2d_msgs/Twist2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv" "dwb_msgs/TrajectoryScore:nav_2d_msgs/Twist2D:dwb_msgs/CriticScore:dwb_msgs/Trajectory2D:std_msgs/Header:geometry_msgs/Pose2D:nav_2d_msgs/Path2D:nav_2d_msgs/Pose2DStamped"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv" "nav_2d_msgs/Twist2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv" "nav_2d_msgs/Twist2D:dwb_msgs/CriticScore:dwb_msgs/Trajectory2D:std_msgs/Header:geometry_msgs/Pose2D:nav_2d_msgs/Path2D:nav_2d_msgs/Pose2DStamped"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg" "nav_2d_msgs/Twist2D:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg" NAME_WE)
add_custom_target(_dwb_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dwb_msgs" "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_msg_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_msg_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_msg_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)

### Generating Services
_generate_srv_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_cpp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
)

### Generating Module File
_generate_module_cpp(dwb_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dwb_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dwb_msgs_generate_messages dwb_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_cpp _dwb_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwb_msgs_gencpp)
add_dependencies(dwb_msgs_gencpp dwb_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwb_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_msg_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_msg_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_msg_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)

### Generating Services
_generate_srv_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)
_generate_srv_lisp(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
)

### Generating Module File
_generate_module_lisp(dwb_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dwb_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dwb_msgs_generate_messages dwb_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_lisp _dwb_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwb_msgs_genlisp)
add_dependencies(dwb_msgs_genlisp dwb_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwb_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_msg_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_msg_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_msg_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)

### Generating Services
_generate_srv_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_srv_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_srv_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_srv_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg;/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Path2D.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Pose2DStamped.msg;/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)
_generate_srv_py(dwb_msgs
  "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv"
  "${MSG_I_FLAGS}"
  "/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg/Twist2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
)

### Generating Module File
_generate_module_py(dwb_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dwb_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dwb_msgs_generate_messages dwb_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTrajectory.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/LocalPlanEvaluation.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/TrajectoryScore.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/DebugLocalPlan.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/ScoreTrajectory.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GenerateTwists.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/srv/GetCriticScore.srv" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/Trajectory2D.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg/CriticScore.msg" NAME_WE)
add_dependencies(dwb_msgs_generate_messages_py _dwb_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dwb_msgs_genpy)
add_dependencies(dwb_msgs_genpy dwb_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dwb_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dwb_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dwb_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_2d_msgs_generate_messages_cpp)
  add_dependencies(dwb_msgs_generate_messages_cpp nav_2d_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(dwb_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dwb_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dwb_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_2d_msgs_generate_messages_lisp)
  add_dependencies(dwb_msgs_generate_messages_lisp nav_2d_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(dwb_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dwb_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dwb_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_2d_msgs_generate_messages_py)
  add_dependencies(dwb_msgs_generate_messages_py nav_2d_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(dwb_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
