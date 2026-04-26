; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude GetSonar-request.msg.html

(cl:defclass <GetSonar-request> (roslisp-msg-protocol:ros-message)
  ((fov_center
    :reader fov_center
    :initarg :fov_center
    :type cl:float
    :initform 0.0)
   (fov_range
    :reader fov_range
    :initarg :fov_range
    :type cl:float
    :initform 0.0)
   (range_min
    :reader range_min
    :initarg :range_min
    :type cl:float
    :initform 0.0)
   (range_max
    :reader range_max
    :initarg :range_max
    :type cl:float
    :initform 0.0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetSonar-request (<GetSonar-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSonar-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSonar-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetSonar-request> is deprecated: use turtlesim-srv:GetSonar-request instead.")))

(cl:ensure-generic-function 'fov_center-val :lambda-list '(m))
(cl:defmethod fov_center-val ((m <GetSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:fov_center-val is deprecated.  Use turtlesim-srv:fov_center instead.")
  (fov_center m))

(cl:ensure-generic-function 'fov_range-val :lambda-list '(m))
(cl:defmethod fov_range-val ((m <GetSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:fov_range-val is deprecated.  Use turtlesim-srv:fov_range instead.")
  (fov_range m))

(cl:ensure-generic-function 'range_min-val :lambda-list '(m))
(cl:defmethod range_min-val ((m <GetSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:range_min-val is deprecated.  Use turtlesim-srv:range_min instead.")
  (range_min m))

(cl:ensure-generic-function 'range_max-val :lambda-list '(m))
(cl:defmethod range_max-val ((m <GetSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:range_max-val is deprecated.  Use turtlesim-srv:range_max instead.")
  (range_max m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetSonar-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:name-val is deprecated.  Use turtlesim-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSonar-request>) ostream)
  "Serializes a message object of type '<GetSonar-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fov_center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fov_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSonar-request>) istream)
  "Deserializes a message object of type '<GetSonar-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fov_center) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fov_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_max) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSonar-request>)))
  "Returns string type for a service object of type '<GetSonar-request>"
  "turtlesim/GetSonarRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSonar-request)))
  "Returns string type for a service object of type 'GetSonar-request"
  "turtlesim/GetSonarRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSonar-request>)))
  "Returns md5sum for a message object of type '<GetSonar-request>"
  "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSonar-request)))
  "Returns md5sum for a message object of type 'GetSonar-request"
  "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSonar-request>)))
  "Returns full string definition for message of type '<GetSonar-request>"
  (cl:format cl:nil "float32 fov_center~%float32 fov_range~%float32 range_min~%float32 range_max~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSonar-request)))
  "Returns full string definition for message of type 'GetSonar-request"
  (cl:format cl:nil "float32 fov_center~%float32 fov_range~%float32 range_min~%float32 range_max~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSonar-request>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSonar-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSonar-request
    (cl:cons ':fov_center (fov_center msg))
    (cl:cons ':fov_range (fov_range msg))
    (cl:cons ':range_min (range_min msg))
    (cl:cons ':range_max (range_max msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetSonar-response.msg.html

(cl:defclass <GetSonar-response> (roslisp-msg-protocol:ros-message)
  ((closest
    :reader closest
    :initarg :closest
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetSonar-response (<GetSonar-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSonar-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSonar-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetSonar-response> is deprecated: use turtlesim-srv:GetSonar-response instead.")))

(cl:ensure-generic-function 'closest-val :lambda-list '(m))
(cl:defmethod closest-val ((m <GetSonar-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:closest-val is deprecated.  Use turtlesim-srv:closest instead.")
  (closest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSonar-response>) ostream)
  "Serializes a message object of type '<GetSonar-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSonar-response>) istream)
  "Deserializes a message object of type '<GetSonar-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSonar-response>)))
  "Returns string type for a service object of type '<GetSonar-response>"
  "turtlesim/GetSonarResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSonar-response)))
  "Returns string type for a service object of type 'GetSonar-response"
  "turtlesim/GetSonarResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSonar-response>)))
  "Returns md5sum for a message object of type '<GetSonar-response>"
  "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSonar-response)))
  "Returns md5sum for a message object of type 'GetSonar-response"
  "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSonar-response>)))
  "Returns full string definition for message of type '<GetSonar-response>"
  (cl:format cl:nil "float32 closest~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSonar-response)))
  "Returns full string definition for message of type 'GetSonar-response"
  (cl:format cl:nil "float32 closest~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSonar-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSonar-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSonar-response
    (cl:cons ':closest (closest msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSonar)))
  'GetSonar-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSonar)))
  'GetSonar-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSonar)))
  "Returns string type for a service object of type '<GetSonar>"
  "turtlesim/GetSonar")