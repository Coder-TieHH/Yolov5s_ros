;; Auto-generated. Do not edit!


(when (boundp 'ros_tengine::FaceObject)
  (if (not (find-package "ROS_TENGINE"))
    (make-package "ROS_TENGINE"))
  (shadow 'FaceObject (find-package "ROS_TENGINE")))
(unless (find-package "ROS_TENGINE::FACEOBJECT")
  (make-package "ROS_TENGINE::FACEOBJECT"))

(in-package "ROS")
;;//! \htmlinclude FaceObject.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_tengine::FaceObject
  :super ros::object
  :slots (_header _boundingbox _landmark _probability ))

(defmethod ros_tengine::FaceObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:boundingbox __boundingbox) (instance ros_tengine::Rectangle :init))
    ((:landmark __landmark) ())
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _boundingbox __boundingbox)
   (setq _landmark __landmark)
   (setq _probability (float __probability))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:boundingbox
   (&rest __boundingbox)
   (if (keywordp (car __boundingbox))
       (send* _boundingbox __boundingbox)
     (progn
       (if __boundingbox (setq _boundingbox (car __boundingbox)))
       _boundingbox)))
  (:landmark
   (&rest __landmark)
   (if (keywordp (car __landmark))
       (send* _landmark __landmark)
     (progn
       (if __landmark (setq _landmark (car __landmark)))
       _landmark)))
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_tengine/Rectangle _boundingbox
    (send _boundingbox :serialization-length)
    ;; ros_tengine/Vector2D[] _landmark
    (apply #'+ (send-all _landmark :serialization-length)) 4
    ;; float32 _probability
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_tengine/Rectangle _boundingbox
       (send _boundingbox :serialize s)
     ;; ros_tengine/Vector2D[] _landmark
     (write-long (length _landmark) s)
     (dolist (elem _landmark)
       (send elem :serialize s)
       )
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_tengine/Rectangle _boundingbox
     (send _boundingbox :deserialize buf ptr-) (incf ptr- (send _boundingbox :serialization-length))
   ;; ros_tengine/Vector2D[] _landmark
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmark (let (r) (dotimes (i n) (push (instance ros_tengine::Vector2D :init) r)) r))
     (dolist (elem- _landmark)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_tengine::FaceObject :md5sum-) "f59aacefeb98a82d28461251a7540445")
(setf (get ros_tengine::FaceObject :datatype-) "ros_tengine/FaceObject")
(setf (get ros_tengine::FaceObject :definition-)
      "# Face bounding box with marker positions
Header header
Rectangle boundingbox
Vector2D[] landmark
float32 probability

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_tengine/Rectangle
# openCV style rectangle with size and 2D position
Vector2D position
Vector2D size

================================================================================
MSG: ros_tengine/Vector2D
# simple 2D vector
float32 x
float32 y

")



(provide :ros_tengine/FaceObject "f59aacefeb98a82d28461251a7540445")


