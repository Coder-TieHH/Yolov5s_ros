
(cl:in-package :asdf)

(defsystem "ros_tengine-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Euler" :depends-on ("_package_Euler"))
    (:file "_package_Euler" :depends-on ("_package"))
    (:file "FaceObject" :depends-on ("_package_FaceObject"))
    (:file "_package_FaceObject" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "Rectangle" :depends-on ("_package_Rectangle"))
    (:file "_package_Rectangle" :depends-on ("_package"))
    (:file "Vector2D" :depends-on ("_package_Vector2D"))
    (:file "_package_Vector2D" :depends-on ("_package"))
  ))