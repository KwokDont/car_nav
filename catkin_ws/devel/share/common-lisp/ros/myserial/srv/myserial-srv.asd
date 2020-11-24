
(cl:in-package :asdf)

(defsystem "myserial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "myserialsrv" :depends-on ("_package_myserialsrv"))
    (:file "_package_myserialsrv" :depends-on ("_package"))
  ))