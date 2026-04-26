; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude GetTurtles-request.msg.html

(cl:defclass <GetTurtles-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTurtles-request (<GetTurtles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTurtles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTurtles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetTurtles-request> is deprecated: use turtlesim-srv:GetTurtles-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTurtles-request>) ostream)
  "Serializes a message object of type '<GetTurtles-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTurtles-request>) istream)
  "Deserializes a message object of type '<GetTurtles-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTurtles-request>)))
  "Returns string type for a service object of type '<GetTurtles-request>"
  "turtlesim/GetTurtlesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTurtles-request)))
  "Returns string type for a service object of type 'GetTurtles-request"
  "turtlesim/GetTurtlesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTurtles-request>)))
  "Returns md5sum for a message object of type '<GetTurtles-request>"
  "8e09fa9aad51508cfdcab3b64f048ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTurtles-request)))
  "Returns md5sum for a message object of type 'GetTurtles-request"
  "8e09fa9aad51508cfdcab3b64f048ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTurtles-request>)))
  "Returns full string definition for message of type '<GetTurtles-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTurtles-request)))
  "Returns full string definition for message of type 'GetTurtles-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTurtles-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTurtles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTurtles-request
))
;//! \htmlinclude GetTurtles-response.msg.html

(cl:defclass <GetTurtles-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetTurtles-response (<GetTurtles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTurtles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTurtles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetTurtles-response> is deprecated: use turtlesim-srv:GetTurtles-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <GetTurtles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:list-val is deprecated.  Use turtlesim-srv:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTurtles-response>) ostream)
  "Serializes a message object of type '<GetTurtles-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTurtles-response>) istream)
  "Deserializes a message object of type '<GetTurtles-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTurtles-response>)))
  "Returns string type for a service object of type '<GetTurtles-response>"
  "turtlesim/GetTurtlesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTurtles-response)))
  "Returns string type for a service object of type 'GetTurtles-response"
  "turtlesim/GetTurtlesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTurtles-response>)))
  "Returns md5sum for a message object of type '<GetTurtles-response>"
  "8e09fa9aad51508cfdcab3b64f048ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTurtles-response)))
  "Returns md5sum for a message object of type 'GetTurtles-response"
  "8e09fa9aad51508cfdcab3b64f048ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTurtles-response>)))
  "Returns full string definition for message of type '<GetTurtles-response>"
  (cl:format cl:nil "string[] list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTurtles-response)))
  "Returns full string definition for message of type 'GetTurtles-response"
  (cl:format cl:nil "string[] list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTurtles-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTurtles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTurtles-response
    (cl:cons ':list (list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTurtles)))
  'GetTurtles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTurtles)))
  'GetTurtles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTurtles)))
  "Returns string type for a service object of type '<GetTurtles>"
  "turtlesim/GetTurtles")