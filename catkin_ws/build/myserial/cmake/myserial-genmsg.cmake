# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "myserial: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imyserial:/home/ubuntu/catkin_ws/src/myserial/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(myserial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" NAME_WE)
add_custom_target(_myserial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myserial" "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" NAME_WE)
add_custom_target(_myserial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myserial" "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(myserial
  "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserial
)

### Generating Services
_generate_srv_cpp(myserial
  "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserial
)

### Generating Module File
_generate_module_cpp(myserial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(myserial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(myserial_generate_messages myserial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" NAME_WE)
add_dependencies(myserial_generate_messages_cpp _myserial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" NAME_WE)
add_dependencies(myserial_generate_messages_cpp _myserial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserial_gencpp)
add_dependencies(myserial_gencpp myserial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(myserial
  "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myserial
)

### Generating Services
_generate_srv_eus(myserial
  "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myserial
)

### Generating Module File
_generate_module_eus(myserial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myserial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(myserial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(myserial_generate_messages myserial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" NAME_WE)
add_dependencies(myserial_generate_messages_eus _myserial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" NAME_WE)
add_dependencies(myserial_generate_messages_eus _myserial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserial_geneus)
add_dependencies(myserial_geneus myserial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(myserial
  "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserial
)

### Generating Services
_generate_srv_lisp(myserial
  "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserial
)

### Generating Module File
_generate_module_lisp(myserial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(myserial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(myserial_generate_messages myserial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" NAME_WE)
add_dependencies(myserial_generate_messages_lisp _myserial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" NAME_WE)
add_dependencies(myserial_generate_messages_lisp _myserial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserial_genlisp)
add_dependencies(myserial_genlisp myserial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(myserial
  "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myserial
)

### Generating Services
_generate_srv_nodejs(myserial
  "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myserial
)

### Generating Module File
_generate_module_nodejs(myserial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myserial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(myserial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(myserial_generate_messages myserial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" NAME_WE)
add_dependencies(myserial_generate_messages_nodejs _myserial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" NAME_WE)
add_dependencies(myserial_generate_messages_nodejs _myserial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserial_gennodejs)
add_dependencies(myserial_gennodejs myserial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(myserial
  "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserial
)

### Generating Services
_generate_srv_py(myserial
  "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserial
)

### Generating Module File
_generate_module_py(myserial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(myserial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(myserial_generate_messages myserial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/msg/myserial.msg" NAME_WE)
add_dependencies(myserial_generate_messages_py _myserial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/myserial/srv/myserialsrv.srv" NAME_WE)
add_dependencies(myserial_generate_messages_py _myserial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserial_genpy)
add_dependencies(myserial_genpy myserial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(myserial_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myserial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myserial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(myserial_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(myserial_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myserial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myserial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(myserial_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(myserial_generate_messages_py std_msgs_generate_messages_py)
endif()
