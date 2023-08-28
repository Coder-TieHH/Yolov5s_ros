;; Auto-generated. Do not edit!


(when (boundp 'ros_tengine::Object)
  (if (not (find-package "ROS_TENGINE"))
    (make-package "ROS_TENGINE"))
  (shadow 'Object (find-package "ROS_TENGINE")))
(unless (find-package "ROS_TENGINE::OBJECT")
  (make-package "ROS_TENGINE::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_tengine::Object
  :super ros::object
  :slots (_header _boundingbox _label _probability ))

(defmethod ros_tengine::Object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:boundingbox __boundingbox) (instance ros_tengine::Rectangle :init))
    ((:label __label) "")
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _boundingbox __boundingbox)
   (setq _label (string __label))
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
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
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
    ;; string _label
    4 (length _label)
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
     ;; string _label
       (write-long (length _label) s) (princ _label s)
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
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_tengine::Object :md5sum-) "fe7a643bb189a90d07f198c3564fcece")
(setf (get ros_tengine::Object :datatype-) "ros_tengine/Object")
(setf (get ros_tengine::Object :definition-)
      "# Face bounding box with marker positions
Header header
Rectangle boundingbox
string label
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



(provide :ros_tengine/Object "fe7a643bb189a90d07f198c3564fcece")


