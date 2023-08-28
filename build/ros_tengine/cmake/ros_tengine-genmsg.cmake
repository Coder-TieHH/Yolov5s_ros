# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_tengine: 5 messages, 0 services")

set(MSG_I_FLAGS "-Iros_tengine:/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_tengine_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" NAME_WE)
add_custom_target(_ros_tengine_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tengine" "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" ""
)

get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" NAME_WE)
add_custom_target(_ros_tengine_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tengine" "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" "ros_tengine/Vector2D"
)

get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" NAME_WE)
add_custom_target(_ros_tengine_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tengine" "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" "std_msgs/Header:ros_tengine/Rectangle:ros_tengine/Vector2D"
)

get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" NAME_WE)
add_custom_target(_ros_tengine_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tengine" "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" "std_msgs/Header:ros_tengine/Rectangle:ros_tengine/Vector2D"
)

get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" NAME_WE)
add_custom_target(_ros_tengine_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tengine" "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
)
_generate_msg_cpp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
)
_generate_msg_cpp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
)
_generate_msg_cpp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
)
_generate_msg_cpp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_tengine
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_tengine_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_tengine_generate_messages ros_tengine_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_cpp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_cpp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_cpp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_cpp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_cpp _ros_tengine_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tengine_gencpp)
add_dependencies(ros_tengine_gencpp ros_tengine_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tengine_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
)
_generate_msg_eus(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
)
_generate_msg_eus(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
)
_generate_msg_eus(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
)
_generate_msg_eus(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
)

### Generating Services

### Generating Module File
_generate_module_eus(ros_tengine
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_tengine_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_tengine_generate_messages ros_tengine_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_eus _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_eus _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_eus _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_eus _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_eus _ros_tengine_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tengine_geneus)
add_dependencies(ros_tengine_geneus ros_tengine_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tengine_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
)
_generate_msg_lisp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
)
_generate_msg_lisp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
)
_generate_msg_lisp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
)
_generate_msg_lisp(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_tengine
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_tengine_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_tengine_generate_messages ros_tengine_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_lisp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_lisp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_lisp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_lisp _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_lisp _ros_tengine_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tengine_genlisp)
add_dependencies(ros_tengine_genlisp ros_tengine_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tengine_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
)
_generate_msg_nodejs(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
)
_generate_msg_nodejs(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
)
_generate_msg_nodejs(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
)
_generate_msg_nodejs(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ros_tengine
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_tengine_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_tengine_generate_messages ros_tengine_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_nodejs _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_nodejs _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_nodejs _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_nodejs _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_nodejs _ros_tengine_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tengine_gennodejs)
add_dependencies(ros_tengine_gennodejs ros_tengine_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tengine_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
)
_generate_msg_py(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
)
_generate_msg_py(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
)
_generate_msg_py(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg;/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
)
_generate_msg_py(ros_tengine
  "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
)

### Generating Services

### Generating Module File
_generate_module_py(ros_tengine
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_tengine_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_tengine_generate_messages ros_tengine_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Vector2D.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_py _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Rectangle.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_py _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/FaceObject.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_py _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Object.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_py _ros_tengine_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rpdzkj/Desktop/ros_tengine_yolov5/src/ros_tengine/msg/Euler.msg" NAME_WE)
add_dependencies(ros_tengine_generate_messages_py _ros_tengine_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tengine_genpy)
add_dependencies(ros_tengine_genpy ros_tengine_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tengine_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tengine
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_tengine_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tengine
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_tengine_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tengine
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_tengine_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tengine
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_tengine_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tengine
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_tengine_generate_messages_py std_msgs_generate_messages_py)
endif()
