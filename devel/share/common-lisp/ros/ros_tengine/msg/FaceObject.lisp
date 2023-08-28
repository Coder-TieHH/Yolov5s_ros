; Auto-generated. Do not edit!


(cl:in-package ros_tengine-msg)


;//! \htmlinclude FaceObject.msg.html

(cl:defclass <FaceObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (boundingbox
    :reader boundingbox
    :initarg :boundingbox
    :type ros_tengine-msg:Rectangle
    :initform (cl:make-instance 'ros_tengine-msg:Rectangle))
   (landmark
    :reader landmark
    :initarg :landmark
    :type (cl:vector ros_tengine-msg:Vector2D)
   :initform (cl:make-array 0 :element-type 'ros_tengine-msg:Vector2D :initial-element (cl:make-instance 'ros_tengine-msg:Vector2D)))
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass FaceObject (<FaceObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tengine-msg:<FaceObject> is deprecated: use ros_tengine-msg:FaceObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FaceObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tengine-msg:header-val is deprecated.  Use ros_tengine-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'boundingbox-val :lambda-list '(m))
(cl:defmethod boundingbox-val ((m <FaceObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tengine-msg:boundingbox-val is deprecated.  Use ros_tengine-msg:boundingbox instead.")
  (boundingbox m))

(cl:ensure-generic-function 'landmark-val :lambda-list '(m))
(cl:defmethod landmark-val ((m <FaceObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tengine-msg:landmark-val is deprecated.  Use ros_tengine-msg:landmark instead.")
  (landmark m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <FaceObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tengine-msg:probability-val is deprecated.  Use ros_tengine-msg:probability instead.")
  (probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceObject>) ostream)
  "Serializes a message object of type '<FaceObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundingbox) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmark))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmark))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceObject>) istream)
  "Deserializes a message object of type '<FaceObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundingbox) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmark) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmark)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_tengine-msg:Vector2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceObject>)))
  "Returns string type for a message object of type '<FaceObject>"
  "ros_tengine/FaceObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceObject)))
  "Returns string type for a message object of type 'FaceObject"
  "ros_tengine/FaceObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceObject>)))
  "Returns md5sum for a message object of type '<FaceObject>"
  "f59aacefeb98a82d28461251a7540445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceObject)))
  "Returns md5sum for a message object of type 'FaceObject"
  "f59aacefeb98a82d28461251a7540445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceObject>)))
  "Returns full string definition for message of type '<FaceObject>"
  (cl:format cl:nil "# Face bounding box with marker positions~%Header header~%Rectangle boundingbox~%Vector2D[] landmark~%float32 probability~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_tengine/Rectangle~%# openCV style rectangle with size and 2D position~%Vector2D position~%Vector2D size~%~%================================================================================~%MSG: ros_tengine/Vector2D~%# simple 2D vector~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceObject)))
  "Returns full string definition for message of type 'FaceObject"
  (cl:format cl:nil "# Face bounding box with marker positions~%Header header~%Rectangle boundingbox~%Vector2D[] landmark~%float32 probability~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_tengine/Rectangle~%# openCV style rectangle with size and 2D position~%Vector2D position~%Vector2D size~%~%================================================================================~%MSG: ros_tengine/Vector2D~%# simple 2D vector~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundingbox))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmark) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceObject>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceObject
    (cl:cons ':header (header msg))
    (cl:cons ':boundingbox (boundingbox msg))
    (cl:cons ':landmark (landmark msg))
    (cl:cons ':probability (probability msg))
))
