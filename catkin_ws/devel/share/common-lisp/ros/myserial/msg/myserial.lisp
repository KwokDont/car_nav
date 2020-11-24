; Auto-generated. Do not edit!


(cl:in-package myserial-msg)


;//! \htmlinclude myserial.msg.html

(cl:defclass <myserial> (roslisp-msg-protocol:ros-message)
  ((a1
    :reader a1
    :initarg :a1
    :type cl:float
    :initform 0.0)
   (a2
    :reader a2
    :initarg :a2
    :type cl:float
    :initform 0.0)
   (a3
    :reader a3
    :initarg :a3
    :type cl:float
    :initform 0.0)
   (a4
    :reader a4
    :initarg :a4
    :type cl:float
    :initform 0.0)
   (a5
    :reader a5
    :initarg :a5
    :type cl:float
    :initform 0.0)
   (a6
    :reader a6
    :initarg :a6
    :type cl:float
    :initform 0.0)
   (a7
    :reader a7
    :initarg :a7
    :type cl:float
    :initform 0.0)
   (a8
    :reader a8
    :initarg :a8
    :type cl:float
    :initform 0.0)
   (a9
    :reader a9
    :initarg :a9
    :type cl:float
    :initform 0.0))
)

(cl:defclass myserial (<myserial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myserial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myserial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myserial-msg:<myserial> is deprecated: use myserial-msg:myserial instead.")))

(cl:ensure-generic-function 'a1-val :lambda-list '(m))
(cl:defmethod a1-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a1-val is deprecated.  Use myserial-msg:a1 instead.")
  (a1 m))

(cl:ensure-generic-function 'a2-val :lambda-list '(m))
(cl:defmethod a2-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a2-val is deprecated.  Use myserial-msg:a2 instead.")
  (a2 m))

(cl:ensure-generic-function 'a3-val :lambda-list '(m))
(cl:defmethod a3-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a3-val is deprecated.  Use myserial-msg:a3 instead.")
  (a3 m))

(cl:ensure-generic-function 'a4-val :lambda-list '(m))
(cl:defmethod a4-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a4-val is deprecated.  Use myserial-msg:a4 instead.")
  (a4 m))

(cl:ensure-generic-function 'a5-val :lambda-list '(m))
(cl:defmethod a5-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a5-val is deprecated.  Use myserial-msg:a5 instead.")
  (a5 m))

(cl:ensure-generic-function 'a6-val :lambda-list '(m))
(cl:defmethod a6-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a6-val is deprecated.  Use myserial-msg:a6 instead.")
  (a6 m))

(cl:ensure-generic-function 'a7-val :lambda-list '(m))
(cl:defmethod a7-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a7-val is deprecated.  Use myserial-msg:a7 instead.")
  (a7 m))

(cl:ensure-generic-function 'a8-val :lambda-list '(m))
(cl:defmethod a8-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a8-val is deprecated.  Use myserial-msg:a8 instead.")
  (a8 m))

(cl:ensure-generic-function 'a9-val :lambda-list '(m))
(cl:defmethod a9-val ((m <myserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-msg:a9-val is deprecated.  Use myserial-msg:a9 instead.")
  (a9 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myserial>) ostream)
  "Serializes a message object of type '<myserial>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a8))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a9))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myserial>) istream)
  "Deserializes a message object of type '<myserial>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a8) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a9) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myserial>)))
  "Returns string type for a message object of type '<myserial>"
  "myserial/myserial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myserial)))
  "Returns string type for a message object of type 'myserial"
  "myserial/myserial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myserial>)))
  "Returns md5sum for a message object of type '<myserial>"
  "f27b126aa6a2fa91707e5d51287b08bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myserial)))
  "Returns md5sum for a message object of type 'myserial"
  "f27b126aa6a2fa91707e5d51287b08bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myserial>)))
  "Returns full string definition for message of type '<myserial>"
  (cl:format cl:nil "float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%float32 a7~%float32 a8~%float32 a9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myserial)))
  "Returns full string definition for message of type 'myserial"
  (cl:format cl:nil "float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%float32 a7~%float32 a8~%float32 a9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myserial>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myserial>))
  "Converts a ROS message object to a list"
  (cl:list 'myserial
    (cl:cons ':a1 (a1 msg))
    (cl:cons ':a2 (a2 msg))
    (cl:cons ':a3 (a3 msg))
    (cl:cons ':a4 (a4 msg))
    (cl:cons ':a5 (a5 msg))
    (cl:cons ':a6 (a6 msg))
    (cl:cons ':a7 (a7 msg))
    (cl:cons ':a8 (a8 msg))
    (cl:cons ':a9 (a9 msg))
))
