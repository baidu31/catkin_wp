# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotino_leds: 0 messages, 2 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotino_leds_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv" NAME_WE)
add_custom_target(_robotino_leds_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_leds" "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv" ""
)

get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv" NAME_WE)
add_custom_target(_robotino_leds_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_leds" "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robotino_leds
  "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_leds
)
_generate_srv_cpp(robotino_leds
  "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_leds
)

### Generating Module File
_generate_module_cpp(robotino_leds
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_leds
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotino_leds_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotino_leds_generate_messages robotino_leds_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv" NAME_WE)
add_dependencies(robotino_leds_generate_messages_cpp _robotino_leds_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv" NAME_WE)
add_dependencies(robotino_leds_generate_messages_cpp _robotino_leds_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_leds_gencpp)
add_dependencies(robotino_leds_gencpp robotino_leds_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_leds_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robotino_leds
  "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_leds
)
_generate_srv_lisp(robotino_leds
  "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_leds
)

### Generating Module File
_generate_module_lisp(robotino_leds
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_leds
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotino_leds_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotino_leds_generate_messages robotino_leds_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv" NAME_WE)
add_dependencies(robotino_leds_generate_messages_lisp _robotino_leds_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv" NAME_WE)
add_dependencies(robotino_leds_generate_messages_lisp _robotino_leds_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_leds_genlisp)
add_dependencies(robotino_leds_genlisp robotino_leds_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_leds_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robotino_leds
  "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_leds
)
_generate_srv_py(robotino_leds
  "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_leds
)

### Generating Module File
_generate_module_py(robotino_leds
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_leds
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotino_leds_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotino_leds_generate_messages robotino_leds_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Sinalize.srv" NAME_WE)
add_dependencies(robotino_leds_generate_messages_py _robotino_leds_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nic/catkin_wp/src/ros-indigo-robotino/robotino_leds/srv/Trigger.srv" NAME_WE)
add_dependencies(robotino_leds_generate_messages_py _robotino_leds_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_leds_genpy)
add_dependencies(robotino_leds_genpy robotino_leds_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_leds_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_leds)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_leds
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_leds)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_leds
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_leds)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_leds\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_leds
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
