;; Auto-generated. Do not edit!


(when (boundp 'ros_tengine::Rectangle)
  (if (not (find-package "ROS_TENGINE"))
    (make-package "ROS_TENGINE"))
  (shadow 'Rectangle (find-package "ROS_TENGINE")))
(unless (find-package "ROS_TENGINE::RECTANGLE")
  (make-package "ROS_TENGINE::RECTANGLE"))

(in-package "ROS")
;;//! \htmlinclude Rectangle.msg.html


(defclass ros_tengine::Rectangle
  :super ros::object
  :slots (_position _size ))

(defmethod ros_tengine::Rectangle
  (:init
   (&key
    ((:position __position) (instance ros_tengine::Vector2D :init))
    ((:size __size) (instance ros_tengine::Vector2D :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _size __size)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:serialization-length
   ()
   (+
    ;; ros_tengine/Vector2D _position
    (send _position :serialization-length)
    ;; ros_tengine/Vector2D _size
    (send _size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_tengine/Vector2D _position
       (send _position :serialize s)
     ;; ros_tengine/Vector2D _size
       (send _size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_tengine/Vector2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ros_tengine/Vector2D _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;;
   self)
  )

(setf (get ros_tengine::Rectangle :md5sum-) "c203b85004c7420de46fab775f4b516b")
(setf (get ros_tengine::Rectangle :datatype-) "ros_tengine/Rectangle")
(setf (get ros_tengine::Rectangle :definition-)
      "# openCV style rectangle with size and 2D position
Vector2D position
Vector2D size

================================================================================
MSG: ros_tengine/Vector2D
# simple 2D vector
float32 x
float32 y

")



(provide :ros_tengine/Rectangle "c203b85004c7420de46fab775f4b516b")


