
(cl:in-package :asdf)

(defsystem "turtlesim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Cell" :depends-on ("_package_Cell"))
    (:file "_package_Cell" :depends-on ("_package"))
    (:file "Color" :depends-on ("_package_Color"))
    (:file "_package_Color" :depends-on ("_package"))
    (:file "Mrow" :depends-on ("_package_Mrow"))
    (:file "_package_Mrow" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
  ))