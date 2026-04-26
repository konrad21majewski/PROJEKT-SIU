; Auto-generated. Do not edit!


(cl:in-package turtlesim-msg)


;//! \htmlinclude Cell.msg.html

(cl:defclass <Cell> (roslisp-msg-protocol:ros-message)
  ((red
    :reader red
    :initarg :red
    :type cl:float
    :initform 0.0)
   (green
    :reader green
    :initarg :green
    :type cl:float
    :initform 0.0)
   (blue
    :reader blue
    :initarg :blue
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (occupy
    :reader occupy
    :initarg :occupy
    :type cl:float
    :initform 0.0))
)

(cl:defclass Cell (<Cell>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cell>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cell)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-msg:<Cell> is deprecated: use turtlesim-msg:Cell instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:red-val is deprecated.  Use turtlesim-msg:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:green-val is deprecated.  Use turtlesim-msg:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:blue-val is deprecated.  Use turtlesim-msg:blue instead.")
  (blue m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:distance-val is deprecated.  Use turtlesim-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'occupy-val :lambda-list '(m))
(cl:defmethod occupy-val ((m <Cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:occupy-val is deprecated.  Use turtlesim-msg:occupy instead.")
  (occupy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cell>) ostream)
  "Serializes a message object of type '<Cell>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'red))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'green))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'blue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'occupy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cell>) istream)
  "Deserializes a message object of type '<Cell>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'red) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'green) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blue) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occupy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cell>)))
  "Returns string type for a message object of type '<Cell>"
  "turtlesim/Cell")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cell)))
  "Returns string type for a message object of type 'Cell"
  "turtlesim/Cell")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cell>)))
  "Returns md5sum for a message object of type '<Cell>"
  "688818a433dd67daefd39f411918d8b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cell)))
  "Returns md5sum for a message object of type 'Cell"
  "688818a433dd67daefd39f411918d8b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cell>)))
  "Returns full string definition for message of type '<Cell>"
  (cl:format cl:nil "float32 red~%float32 green ~%float32 blue~%float32 distance ~%float32 occupy ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cell)))
  "Returns full string definition for message of type 'Cell"
  (cl:format cl:nil "float32 red~%float32 green ~%float32 blue~%float32 distance ~%float32 occupy ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cell>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cell>))
  "Converts a ROS message object to a list"
  (cl:list 'Cell
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':occupy (occupy msg))
))
