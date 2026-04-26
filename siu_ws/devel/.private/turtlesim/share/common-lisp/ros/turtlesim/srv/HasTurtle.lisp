; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude HasTurtle-request.msg.html

(cl:defclass <HasTurtle-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass HasTurtle-request (<HasTurtle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HasTurtle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HasTurtle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<HasTurtle-request> is deprecated: use turtlesim-srv:HasTurtle-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HasTurtle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:name-val is deprecated.  Use turtlesim-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HasTurtle-request>) ostream)
  "Serializes a message object of type '<HasTurtle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HasTurtle-request>) istream)
  "Deserializes a message object of type '<HasTurtle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HasTurtle-request>)))
  "Returns string type for a service object of type '<HasTurtle-request>"
  "turtlesim/HasTurtleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HasTurtle-request)))
  "Returns string type for a service object of type 'HasTurtle-request"
  "turtlesim/HasTurtleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HasTurtle-request>)))
  "Returns md5sum for a message object of type '<HasTurtle-request>"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HasTurtle-request)))
  "Returns md5sum for a message object of type 'HasTurtle-request"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HasTurtle-request>)))
  "Returns full string definition for message of type '<HasTurtle-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HasTurtle-request)))
  "Returns full string definition for message of type 'HasTurtle-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HasTurtle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HasTurtle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HasTurtle-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude HasTurtle-response.msg.html

(cl:defclass <HasTurtle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HasTurtle-response (<HasTurtle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HasTurtle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HasTurtle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<HasTurtle-response> is deprecated: use turtlesim-srv:HasTurtle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <HasTurtle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:result-val is deprecated.  Use turtlesim-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HasTurtle-response>) ostream)
  "Serializes a message object of type '<HasTurtle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HasTurtle-response>) istream)
  "Deserializes a message object of type '<HasTurtle-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HasTurtle-response>)))
  "Returns string type for a service object of type '<HasTurtle-response>"
  "turtlesim/HasTurtleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HasTurtle-response)))
  "Returns string type for a service object of type 'HasTurtle-response"
  "turtlesim/HasTurtleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HasTurtle-response>)))
  "Returns md5sum for a message object of type '<HasTurtle-response>"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HasTurtle-response)))
  "Returns md5sum for a message object of type 'HasTurtle-response"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HasTurtle-response>)))
  "Returns full string definition for message of type '<HasTurtle-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HasTurtle-response)))
  "Returns full string definition for message of type 'HasTurtle-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HasTurtle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HasTurtle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HasTurtle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HasTurtle)))
  'HasTurtle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HasTurtle)))
  'HasTurtle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HasTurtle)))
  "Returns string type for a service object of type '<HasTurtle>"
  "turtlesim/HasTurtle")