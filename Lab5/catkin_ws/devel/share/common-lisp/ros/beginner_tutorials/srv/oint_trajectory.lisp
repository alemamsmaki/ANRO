; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude oint_trajectory-request.msg.html

(cl:defclass <oint_trajectory-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass oint_trajectory-request (<oint_trajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <oint_trajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'oint_trajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<oint_trajectory-request> is deprecated: use beginner_tutorials-srv:oint_trajectory-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <oint_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:type-val is deprecated.  Use beginner_tutorials-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <oint_trajectory-request>) ostream)
  "Serializes a message object of type '<oint_trajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <oint_trajectory-request>) istream)
  "Deserializes a message object of type '<oint_trajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<oint_trajectory-request>)))
  "Returns string type for a service object of type '<oint_trajectory-request>"
  "beginner_tutorials/oint_trajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'oint_trajectory-request)))
  "Returns string type for a service object of type 'oint_trajectory-request"
  "beginner_tutorials/oint_trajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<oint_trajectory-request>)))
  "Returns md5sum for a message object of type '<oint_trajectory-request>"
  "1b85c40201362e9a9064250d10c96489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'oint_trajectory-request)))
  "Returns md5sum for a message object of type 'oint_trajectory-request"
  "1b85c40201362e9a9064250d10c96489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<oint_trajectory-request>)))
  "Returns full string definition for message of type '<oint_trajectory-request>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'oint_trajectory-request)))
  "Returns full string definition for message of type 'oint_trajectory-request"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <oint_trajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <oint_trajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'oint_trajectory-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude oint_trajectory-response.msg.html

(cl:defclass <oint_trajectory-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass oint_trajectory-response (<oint_trajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <oint_trajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'oint_trajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<oint_trajectory-response> is deprecated: use beginner_tutorials-srv:oint_trajectory-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <oint_trajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:status-val is deprecated.  Use beginner_tutorials-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <oint_trajectory-response>) ostream)
  "Serializes a message object of type '<oint_trajectory-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <oint_trajectory-response>) istream)
  "Deserializes a message object of type '<oint_trajectory-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<oint_trajectory-response>)))
  "Returns string type for a service object of type '<oint_trajectory-response>"
  "beginner_tutorials/oint_trajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'oint_trajectory-response)))
  "Returns string type for a service object of type 'oint_trajectory-response"
  "beginner_tutorials/oint_trajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<oint_trajectory-response>)))
  "Returns md5sum for a message object of type '<oint_trajectory-response>"
  "1b85c40201362e9a9064250d10c96489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'oint_trajectory-response)))
  "Returns md5sum for a message object of type 'oint_trajectory-response"
  "1b85c40201362e9a9064250d10c96489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<oint_trajectory-response>)))
  "Returns full string definition for message of type '<oint_trajectory-response>"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'oint_trajectory-response)))
  "Returns full string definition for message of type 'oint_trajectory-response"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <oint_trajectory-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <oint_trajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'oint_trajectory-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'oint_trajectory)))
  'oint_trajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'oint_trajectory)))
  'oint_trajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'oint_trajectory)))
  "Returns string type for a service object of type '<oint_trajectory>"
  "beginner_tutorials/oint_trajectory")