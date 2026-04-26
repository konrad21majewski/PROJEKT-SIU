; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude GetFrameSize-request.msg.html

(cl:defclass <GetFrameSize-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFrameSize-request (<GetFrameSize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrameSize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrameSize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetFrameSize-request> is deprecated: use turtlesim-srv:GetFrameSize-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrameSize-request>) ostream)
  "Serializes a message object of type '<GetFrameSize-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrameSize-request>) istream)
  "Deserializes a message object of type '<GetFrameSize-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrameSize-request>)))
  "Returns string type for a service object of type '<GetFrameSize-request>"
  "turtlesim/GetFrameSizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrameSize-request)))
  "Returns string type for a service object of type 'GetFrameSize-request"
  "turtlesim/GetFrameSizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrameSize-request>)))
  "Returns md5sum for a message object of type '<GetFrameSize-request>"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrameSize-request)))
  "Returns md5sum for a message object of type 'GetFrameSize-request"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrameSize-request>)))
  "Returns full string definition for message of type '<GetFrameSize-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrameSize-request)))
  "Returns full string definition for message of type 'GetFrameSize-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrameSize-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrameSize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrameSize-request
))
;//! \htmlinclude GetFrameSize-response.msg.html

(cl:defclass <GetFrameSize-response> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetFrameSize-response (<GetFrameSize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrameSize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrameSize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetFrameSize-response> is deprecated: use turtlesim-srv:GetFrameSize-response instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <GetFrameSize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:width-val is deprecated.  Use turtlesim-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <GetFrameSize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:height-val is deprecated.  Use turtlesim-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrameSize-response>) ostream)
  "Serializes a message object of type '<GetFrameSize-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrameSize-response>) istream)
  "Deserializes a message object of type '<GetFrameSize-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrameSize-response>)))
  "Returns string type for a service object of type '<GetFrameSize-response>"
  "turtlesim/GetFrameSizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrameSize-response)))
  "Returns string type for a service object of type 'GetFrameSize-response"
  "turtlesim/GetFrameSizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrameSize-response>)))
  "Returns md5sum for a message object of type '<GetFrameSize-response>"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrameSize-response)))
  "Returns md5sum for a message object of type 'GetFrameSize-response"
  "ed3043f094c99bdd8118bc5b0ddb14ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrameSize-response>)))
  "Returns full string definition for message of type '<GetFrameSize-response>"
  (cl:format cl:nil "float32 width~%float32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrameSize-response)))
  "Returns full string definition for message of type 'GetFrameSize-response"
  (cl:format cl:nil "float32 width~%float32 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrameSize-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrameSize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrameSize-response
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFrameSize)))
  'GetFrameSize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFrameSize)))
  'GetFrameSize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrameSize)))
  "Returns string type for a service object of type '<GetFrameSize>"
  "turtlesim/GetFrameSize")