; Auto-generated. Do not edit!


(cl:in-package ros_tengine-msg)


;//! \htmlinclude Rectangle.msg.html

(cl:defclass <Rectangle> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type ros_tengine-msg:Vector2D
    :initform (cl:make-instance 'ros_tengine-msg:Vector2D))
   (size
    :reader size
    :initarg :size
    :type ros_tengine-msg:Vector2D
    :initform (cl:make-instance 'ros_tengine-msg:Vector2D)))
)

(cl:defclass Rectangle (<Rectangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rectangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rectangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tengine-msg:<Rectangle> is deprecated: use ros_tengine-msg:Rectangle instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tengine-msg:position-val is deprecated.  Use ros_tengine-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Rectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tengine-msg:size-val is deprecated.  Use ros_tengine-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rectangle>) ostream)
  "Serializes a message object of type '<Rectangle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rectangle>) istream)
  "Deserializes a message object of type '<Rectangle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rectangle>)))
  "Returns string type for a message object of type '<Rectangle>"
  "ros_tengine/Rectangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rectangle)))
  "Returns string type for a message object of type 'Rectangle"
  "ros_tengine/Rectangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rectangle>)))
  "Returns md5sum for a message object of type '<Rectangle>"
  "c203b85004c7420de46fab775f4b516b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rectangle)))
  "Returns md5sum for a message object of type 'Rectangle"
  "c203b85004c7420de46fab775f4b516b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rectangle>)))
  "Returns full string definition for message of type '<Rectangle>"
  (cl:format cl:nil "# openCV style rectangle with size and 2D position~%Vector2D position~%Vector2D size~%~%================================================================================~%MSG: ros_tengine/Vector2D~%# simple 2D vector~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rectangle)))
  "Returns full string definition for message of type 'Rectangle"
  (cl:format cl:nil "# openCV style rectangle with size and 2D position~%Vector2D position~%Vector2D size~%~%================================================================================~%MSG: ros_tengine/Vector2D~%# simple 2D vector~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rectangle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rectangle>))
  "Converts a ROS message object to a list"
  (cl:list 'Rectangle
    (cl:cons ':position (position msg))
    (cl:cons ':size (size msg))
))
