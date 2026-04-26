; Auto-generated. Do not edit!


(cl:in-package turtlesim-msg)


;//! \htmlinclude Mrow.msg.html

(cl:defclass <Mrow> (roslisp-msg-protocol:ros-message)
  ((cells
    :reader cells
    :initarg :cells
    :type (cl:vector turtlesim-msg:Cell)
   :initform (cl:make-array 0 :element-type 'turtlesim-msg:Cell :initial-element (cl:make-instance 'turtlesim-msg:Cell))))
)

(cl:defclass Mrow (<Mrow>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mrow>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mrow)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-msg:<Mrow> is deprecated: use turtlesim-msg:Mrow instead.")))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <Mrow>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-msg:cells-val is deprecated.  Use turtlesim-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mrow>) ostream)
  "Serializes a message object of type '<Mrow>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mrow>) istream)
  "Deserializes a message object of type '<Mrow>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'turtlesim-msg:Cell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mrow>)))
  "Returns string type for a message object of type '<Mrow>"
  "turtlesim/Mrow")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mrow)))
  "Returns string type for a message object of type 'Mrow"
  "turtlesim/Mrow")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mrow>)))
  "Returns md5sum for a message object of type '<Mrow>"
  "dc4d4a6faec42c0efee83680cff86b79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mrow)))
  "Returns md5sum for a message object of type 'Mrow"
  "dc4d4a6faec42c0efee83680cff86b79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mrow>)))
  "Returns full string definition for message of type '<Mrow>"
  (cl:format cl:nil "Cell[] cells~%~%================================================================================~%MSG: turtlesim/Cell~%float32 red~%float32 green ~%float32 blue~%float32 distance ~%float32 occupy ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mrow)))
  "Returns full string definition for message of type 'Mrow"
  (cl:format cl:nil "Cell[] cells~%~%================================================================================~%MSG: turtlesim/Cell~%float32 red~%float32 green ~%float32 blue~%float32 distance ~%float32 occupy ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mrow>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mrow>))
  "Converts a ROS message object to a list"
  (cl:list 'Mrow
    (cl:cons ':cells (cells msg))
))
