
(cl:in-package :asdf)

(defsystem "robotino_leds-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Trigger" :depends-on ("_package_Trigger"))
    (:file "_package_Trigger" :depends-on ("_package"))
    (:file "Sinalize" :depends-on ("_package_Sinalize"))
    (:file "_package_Sinalize" :depends-on ("_package"))
  ))