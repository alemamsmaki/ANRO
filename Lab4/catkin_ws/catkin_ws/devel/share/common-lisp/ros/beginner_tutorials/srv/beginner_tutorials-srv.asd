
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "Jint_Control" :depends-on ("_package_Jint_Control"))
    (:file "_package_Jint_Control" :depends-on ("_package"))
    (:file "Oint_Control" :depends-on ("_package_Oint_Control"))
    (:file "_package_Oint_Control" :depends-on ("_package"))
  ))