; Auto-generated. Do not edit!


(cl:in-package myserial-srv)


;//! \htmlinclude myserialsrv-request.msg.html

(cl:defclass <myserialsrv-request> (roslisp-msg-protocol:ros-message)
  ((A1
    :reader A1
    :initarg :A1
    :type cl:float
    :initform 0.0)
   (A2
    :reader A2
    :initarg :A2
    :type cl:float
    :initform 0.0)
   (A3
    :reader A3
    :initarg :A3
    :type cl:float
    :initform 0.0)
   (A4
    :reader A4
    :initarg :A4
    :type cl:float
    :initform 0.0)
   (A5
    :reader A5
    :initarg :A5
    :type cl:float
    :initform 0.0)
   (A6
    :reader A6
    :initarg :A6
    :type cl:float
    :initform 0.0)
   (A7
    :reader A7
    :initarg :A7
    :type cl:float
    :initform 0.0)
   (A8
    :reader A8
    :initarg :A8
    :type cl:float
    :initform 0.0)
   (A9
    :reader A9
    :initarg :A9
    :type cl:float
    :initform 0.0))
)

(cl:defclass myserialsrv-request (<myserialsrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myserialsrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myserialsrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myserial-srv:<myserialsrv-request> is deprecated: use myserial-srv:myserialsrv-request instead.")))

(cl:ensure-generic-function 'A1-val :lambda-list '(m))
(cl:defmethod A1-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A1-val is deprecated.  Use myserial-srv:A1 instead.")
  (A1 m))

(cl:ensure-generic-function 'A2-val :lambda-list '(m))
(cl:defmethod A2-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A2-val is deprecated.  Use myserial-srv:A2 instead.")
  (A2 m))

(cl:ensure-generic-function 'A3-val :lambda-list '(m))
(cl:defmethod A3-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A3-val is deprecated.  Use myserial-srv:A3 instead.")
  (A3 m))

(cl:ensure-generic-function 'A4-val :lambda-list '(m))
(cl:defmethod A4-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A4-val is deprecated.  Use myserial-srv:A4 instead.")
  (A4 m))

(cl:ensure-generic-function 'A5-val :lambda-list '(m))
(cl:defmethod A5-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A5-val is deprecated.  Use myserial-srv:A5 instead.")
  (A5 m))

(cl:ensure-generic-function 'A6-val :lambda-list '(m))
(cl:defmethod A6-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A6-val is deprecated.  Use myserial-srv:A6 instead.")
  (A6 m))

(cl:ensure-generic-function 'A7-val :lambda-list '(m))
(cl:defmethod A7-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A7-val is deprecated.  Use myserial-srv:A7 instead.")
  (A7 m))

(cl:ensure-generic-function 'A8-val :lambda-list '(m))
(cl:defmethod A8-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A8-val is deprecated.  Use myserial-srv:A8 instead.")
  (A8 m))

(cl:ensure-generic-function 'A9-val :lambda-list '(m))
(cl:defmethod A9-val ((m <myserialsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:A9-val is deprecated.  Use myserial-srv:A9 instead.")
  (A9 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myserialsrv-request>) ostream)
  "Serializes a message object of type '<myserialsrv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A8))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A9))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myserialsrv-request>) istream)
  "Deserializes a message object of type '<myserialsrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A8) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A9) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myserialsrv-request>)))
  "Returns string type for a service object of type '<myserialsrv-request>"
  "myserial/myserialsrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myserialsrv-request)))
  "Returns string type for a service object of type 'myserialsrv-request"
  "myserial/myserialsrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myserialsrv-request>)))
  "Returns md5sum for a message object of type '<myserialsrv-request>"
  "8201a68440ff5daa0bba491b406dad47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myserialsrv-request)))
  "Returns md5sum for a message object of type 'myserialsrv-request"
  "8201a68440ff5daa0bba491b406dad47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myserialsrv-request>)))
  "Returns full string definition for message of type '<myserialsrv-request>"
  (cl:format cl:nil "float32 A1~%float32 A2~%float32 A3~%float32 A4~%float32 A5~%float32 A6~%float32 A7~%float32 A8~%float32 A9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myserialsrv-request)))
  "Returns full string definition for message of type 'myserialsrv-request"
  (cl:format cl:nil "float32 A1~%float32 A2~%float32 A3~%float32 A4~%float32 A5~%float32 A6~%float32 A7~%float32 A8~%float32 A9~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myserialsrv-request>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myserialsrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'myserialsrv-request
    (cl:cons ':A1 (A1 msg))
    (cl:cons ':A2 (A2 msg))
    (cl:cons ':A3 (A3 msg))
    (cl:cons ':A4 (A4 msg))
    (cl:cons ':A5 (A5 msg))
    (cl:cons ':A6 (A6 msg))
    (cl:cons ':A7 (A7 msg))
    (cl:cons ':A8 (A8 msg))
    (cl:cons ':A9 (A9 msg))
))
;//! \htmlinclude myserialsrv-response.msg.html

(cl:defclass <myserialsrv-response> (roslisp-msg-protocol:ros-message)
  ((B1
    :reader B1
    :initarg :B1
    :type cl:float
    :initform 0.0)
   (B2
    :reader B2
    :initarg :B2
    :type cl:float
    :initform 0.0)
   (B3
    :reader B3
    :initarg :B3
    :type cl:float
    :initform 0.0)
   (B4
    :reader B4
    :initarg :B4
    :type cl:float
    :initform 0.0)
   (B5
    :reader B5
    :initarg :B5
    :type cl:float
    :initform 0.0)
   (B6
    :reader B6
    :initarg :B6
    :type cl:float
    :initform 0.0)
   (B7
    :reader B7
    :initarg :B7
    :type cl:float
    :initform 0.0)
   (B8
    :reader B8
    :initarg :B8
    :type cl:float
    :initform 0.0)
   (B9
    :reader B9
    :initarg :B9
    :type cl:float
    :initform 0.0))
)

(cl:defclass myserialsrv-response (<myserialsrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myserialsrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myserialsrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myserial-srv:<myserialsrv-response> is deprecated: use myserial-srv:myserialsrv-response instead.")))

(cl:ensure-generic-function 'B1-val :lambda-list '(m))
(cl:defmethod B1-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B1-val is deprecated.  Use myserial-srv:B1 instead.")
  (B1 m))

(cl:ensure-generic-function 'B2-val :lambda-list '(m))
(cl:defmethod B2-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B2-val is deprecated.  Use myserial-srv:B2 instead.")
  (B2 m))

(cl:ensure-generic-function 'B3-val :lambda-list '(m))
(cl:defmethod B3-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B3-val is deprecated.  Use myserial-srv:B3 instead.")
  (B3 m))

(cl:ensure-generic-function 'B4-val :lambda-list '(m))
(cl:defmethod B4-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B4-val is deprecated.  Use myserial-srv:B4 instead.")
  (B4 m))

(cl:ensure-generic-function 'B5-val :lambda-list '(m))
(cl:defmethod B5-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B5-val is deprecated.  Use myserial-srv:B5 instead.")
  (B5 m))

(cl:ensure-generic-function 'B6-val :lambda-list '(m))
(cl:defmethod B6-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B6-val is deprecated.  Use myserial-srv:B6 instead.")
  (B6 m))

(cl:ensure-generic-function 'B7-val :lambda-list '(m))
(cl:defmethod B7-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B7-val is deprecated.  Use myserial-srv:B7 instead.")
  (B7 m))

(cl:ensure-generic-function 'B8-val :lambda-list '(m))
(cl:defmethod B8-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B8-val is deprecated.  Use myserial-srv:B8 instead.")
  (B8 m))

(cl:ensure-generic-function 'B9-val :lambda-list '(m))
(cl:defmethod B9-val ((m <myserialsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myserial-srv:B9-val is deprecated.  Use myserial-srv:B9 instead.")
  (B9 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myserialsrv-response>) ostream)
  "Serializes a message object of type '<myserialsrv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B8))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B9))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myserialsrv-response>) istream)
  "Deserializes a message object of type '<myserialsrv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B8) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B9) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myserialsrv-response>)))
  "Returns string type for a service object of type '<myserialsrv-response>"
  "myserial/myserialsrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myserialsrv-response)))
  "Returns string type for a service object of type 'myserialsrv-response"
  "myserial/myserialsrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myserialsrv-response>)))
  "Returns md5sum for a message object of type '<myserialsrv-response>"
  "8201a68440ff5daa0bba491b406dad47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myserialsrv-response)))
  "Returns md5sum for a message object of type 'myserialsrv-response"
  "8201a68440ff5daa0bba491b406dad47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myserialsrv-response>)))
  "Returns full string definition for message of type '<myserialsrv-response>"
  (cl:format cl:nil "float32 B1~%float32 B2~%float32 B3~%float32 B4~%float32 B5~%float32 B6~%float32 B7~%float32 B8~%float32 B9~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myserialsrv-response)))
  "Returns full string definition for message of type 'myserialsrv-response"
  (cl:format cl:nil "float32 B1~%float32 B2~%float32 B3~%float32 B4~%float32 B5~%float32 B6~%float32 B7~%float32 B8~%float32 B9~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myserialsrv-response>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myserialsrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'myserialsrv-response
    (cl:cons ':B1 (B1 msg))
    (cl:cons ':B2 (B2 msg))
    (cl:cons ':B3 (B3 msg))
    (cl:cons ':B4 (B4 msg))
    (cl:cons ':B5 (B5 msg))
    (cl:cons ':B6 (B6 msg))
    (cl:cons ':B7 (B7 msg))
    (cl:cons ':B8 (B8 msg))
    (cl:cons ':B9 (B9 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'myserialsrv)))
  'myserialsrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'myserialsrv)))
  'myserialsrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myserialsrv)))
  "Returns string type for a service object of type '<myserialsrv>"
  "myserial/myserialsrv")