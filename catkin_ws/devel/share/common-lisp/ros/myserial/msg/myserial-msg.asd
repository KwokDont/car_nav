
(cl:in-package :asdf)

(defsystem "myserial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "myserial" :depends-on ("_package_myserial"))
    (:file "_package_myserial" :depends-on ("_package"))
  ))