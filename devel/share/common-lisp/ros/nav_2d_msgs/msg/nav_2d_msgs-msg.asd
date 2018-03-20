
(cl:in-package :asdf)

(defsystem "nav_2d_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Path2D" :depends-on ("_package_Path2D"))
    (:file "_package_Path2D" :depends-on ("_package"))
    (:file "Twist2D" :depends-on ("_package_Twist2D"))
    (:file "_package_Twist2D" :depends-on ("_package"))
    (:file "Pose2DStamped" :depends-on ("_package_Pose2DStamped"))
    (:file "_package_Pose2DStamped" :depends-on ("_package"))
    (:file "Twist2DStamped" :depends-on ("_package_Twist2DStamped"))
    (:file "_package_Twist2DStamped" :depends-on ("_package"))
    (:file "Pose2D32" :depends-on ("_package_Pose2D32"))
    (:file "_package_Pose2D32" :depends-on ("_package"))
    (:file "Twist2D32" :depends-on ("_package_Twist2D32"))
    (:file "_package_Twist2D32" :depends-on ("_package"))
  ))