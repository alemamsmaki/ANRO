; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude Jint_Control-request.msg.html

(cl:defclass <Jint_Control-request> (roslisp-msg-protocol:ros-message)
  ((typ
    :reader typ
    :initarg :typ
    :type cl:fixnum
    :initform 0)
   (t1
    :reader t1
    :initarg :t1
    :type cl:float
    :initform 0.0)
   (t2
    :reader t2
    :initarg :t2
    :type cl:float
    :initform 0.0)
   (t3
    :reader t3
    :initarg :t3
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass Jint_Control-request (<Jint_Control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Jint_Control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Jint_Control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Jint_Control-request> is deprecated: use beginner_tutorials-srv:Jint_Control-request instead.")))

(cl:ensure-generic-function 'typ-val :lambda-list '(m))
(cl:defmethod typ-val ((m <Jint_Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:typ-val is deprecated.  Use beginner_tutorials-srv:typ instead.")
  (typ m))

(cl:ensure-generic-function 't1-val :lambda-list '(m))
(cl:defmethod t1-val ((m <Jint_Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:t1-val is deprecated.  Use beginner_tutorials-srv:t1 instead.")
  (t1 m))

(cl:ensure-generic-function 't2-val :lambda-list '(m))
(cl:defmethod t2-val ((m <Jint_Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:t2-val is deprecated.  Use beginner_tutorials-srv:t2 instead.")
  (t2 m))

(cl:ensure-generic-function 't3-val :lambda-list '(m))
(cl:defmethod t3-val ((m <Jint_Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:t3-val is deprecated.  Use beginner_tutorials-srv:t3 instead.")
  (t3 m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Jint_Control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:time-val is deprecated.  Use beginner_tutorials-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Jint_Control-request>) ostream)
  "Serializes a message object of type '<Jint_Control-request>"
  (cl:let* ((signed (cl:slot-value msg 'typ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Jint_Control-request>) istream)
  "Deserializes a message object of type '<Jint_Control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'typ) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Jint_Control-request>)))
  "Returns string type for a service object of type '<Jint_Control-request>"
  "beginner_tutorials/Jint_ControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jint_Control-request)))
  "Returns string type for a service object of type 'Jint_Control-request"
  "beginner_tutorials/Jint_ControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Jint_Control-request>)))
  "Returns md5sum for a message object of type '<Jint_Control-request>"
  "27dce5e8a7342082f1bb452fe4d0a953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Jint_Control-request)))
  "Returns md5sum for a message object of type 'Jint_Control-request"
  "27dce5e8a7342082f1bb452fe4d0a953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Jint_Control-request>)))
  "Returns full string definition for message of type '<Jint_Control-request>"
  (cl:format cl:nil "int8 typ~%float32 t1~%float32 t2~%float32 t3~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Jint_Control-request)))
  "Returns full string definition for message of type 'Jint_Control-request"
  (cl:format cl:nil "int8 typ~%float32 t1~%float32 t2~%float32 t3~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Jint_Control-request>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Jint_Control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Jint_Control-request
    (cl:cons ':typ (typ msg))
    (cl:cons ':t1 (t1 msg))
    (cl:cons ':t2 (t2 msg))
    (cl:cons ':t3 (t3 msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude Jint_Control-response.msg.html

(cl:defclass <Jint_Control-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass Jint_Control-response (<Jint_Control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Jint_Control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Jint_Control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Jint_Control-response> is deprecated: use beginner_tutorials-srv:Jint_Control-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Jint_Control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:status-val is deprecated.  Use beginner_tutorials-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Jint_Control-response>) ostream)
  "Serializes a message object of type '<Jint_Control-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Jint_Control-response>) istream)
  "Deserializes a message object of type '<Jint_Control-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Jint_Control-response>)))
  "Returns string type for a service object of type '<Jint_Control-response>"
  "beginner_tutorials/Jint_ControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jint_Control-response)))
  "Returns string type for a service object of type 'Jint_Control-response"
  "beginner_tutorials/Jint_ControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Jint_Control-response>)))
  "Returns md5sum for a message object of type '<Jint_Control-response>"
  "27dce5e8a7342082f1bb452fe4d0a953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Jint_Control-response)))
  "Returns md5sum for a message object of type 'Jint_Control-response"
  "27dce5e8a7342082f1bb452fe4d0a953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Jint_Control-response>)))
  "Returns full string definition for message of type '<Jint_Control-response>"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Jint_Control-response)))
  "Returns full string definition for message of type 'Jint_Control-response"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Jint_Control-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Jint_Control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Jint_Control-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Jint_Control)))
  'Jint_Control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Jint_Control)))
  'Jint_Control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jint_Control)))
  "Returns string type for a service object of type '<Jint_Control>"
  "beginner_tutorials/Jint_Control")