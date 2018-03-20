
(cl:in-package :asdf)

(defsystem "mbf_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CheckPose" :depends-on ("_package_CheckPose"))
    (:file "_package_CheckPose" :depends-on ("_package"))
  ))