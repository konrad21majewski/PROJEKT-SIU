; Auto-generated. Do not edit!


(cl:in-package turtlesim-srv)


;//! \htmlinclude GetCameraImage-request.msg.html

(cl:defclass <GetCameraImage-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (frame_pixel_size
    :reader frame_pixel_size
    :initarg :frame_pixel_size
    :type cl:fixnum
    :initform 0)
   (cell_count
    :reader cell_count
    :initarg :cell_count
    :type cl:fixnum
    :initform 0)
   (x_offset
    :reader x_offset
    :initarg :x_offset
    :type cl:fixnum
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type turtlesim-msg:Pose
    :initform (cl:make-instance 'turtlesim-msg:Pose))
   (show_matrix_cells_and_goal
    :reader show_matrix_cells_and_goal
    :initarg :show_matrix_cells_and_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCameraImage-request (<GetCameraImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCameraImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCameraImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetCameraImage-request> is deprecated: use turtlesim-srv:GetCameraImage-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetCameraImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:name-val is deprecated.  Use turtlesim-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'frame_pixel_size-val :lambda-list '(m))
(cl:defmethod frame_pixel_size-val ((m <GetCameraImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:frame_pixel_size-val is deprecated.  Use turtlesim-srv:frame_pixel_size instead.")
  (frame_pixel_size m))

(cl:ensure-generic-function 'cell_count-val :lambda-list '(m))
(cl:defmethod cell_count-val ((m <GetCameraImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:cell_count-val is deprecated.  Use turtlesim-srv:cell_count instead.")
  (cell_count m))

(cl:ensure-generic-function 'x_offset-val :lambda-list '(m))
(cl:defmethod x_offset-val ((m <GetCameraImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:x_offset-val is deprecated.  Use turtlesim-srv:x_offset instead.")
  (x_offset m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetCameraImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:goal-val is deprecated.  Use turtlesim-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'show_matrix_cells_and_goal-val :lambda-list '(m))
(cl:defmethod show_matrix_cells_and_goal-val ((m <GetCameraImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:show_matrix_cells_and_goal-val is deprecated.  Use turtlesim-srv:show_matrix_cells_and_goal instead.")
  (show_matrix_cells_and_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCameraImage-request>) ostream)
  "Serializes a message object of type '<GetCameraImage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'frame_pixel_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cell_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x_offset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'show_matrix_cells_and_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCameraImage-request>) istream)
  "Deserializes a message object of type '<GetCameraImage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_pixel_size) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell_count) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_offset) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'show_matrix_cells_and_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCameraImage-request>)))
  "Returns string type for a service object of type '<GetCameraImage-request>"
  "turtlesim/GetCameraImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraImage-request)))
  "Returns string type for a service object of type 'GetCameraImage-request"
  "turtlesim/GetCameraImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCameraImage-request>)))
  "Returns md5sum for a message object of type '<GetCameraImage-request>"
  "a8626d9b6b0964d1462185bf70bbc823")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCameraImage-request)))
  "Returns md5sum for a message object of type 'GetCameraImage-request"
  "a8626d9b6b0964d1462185bf70bbc823")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCameraImage-request>)))
  "Returns full string definition for message of type '<GetCameraImage-request>"
  (cl:format cl:nil "string name~%int16 frame_pixel_size~%int16 cell_count~%int16 x_offset~%turtlesim/Pose goal~%bool show_matrix_cells_and_goal~%~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCameraImage-request)))
  "Returns full string definition for message of type 'GetCameraImage-request"
  (cl:format cl:nil "string name~%int16 frame_pixel_size~%int16 cell_count~%int16 x_offset~%turtlesim/Pose goal~%bool show_matrix_cells_and_goal~%~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCameraImage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCameraImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCameraImage-request
    (cl:cons ':name (name msg))
    (cl:cons ':frame_pixel_size (frame_pixel_size msg))
    (cl:cons ':cell_count (cell_count msg))
    (cl:cons ':x_offset (x_offset msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':show_matrix_cells_and_goal (show_matrix_cells_and_goal msg))
))
;//! \htmlinclude GetCameraImage-response.msg.html

(cl:defclass <GetCameraImage-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (m_rows
    :reader m_rows
    :initarg :m_rows
    :type (cl:vector turtlesim-msg:Mrow)
   :initform (cl:make-array 0 :element-type 'turtlesim-msg:Mrow :initial-element (cl:make-instance 'turtlesim-msg:Mrow))))
)

(cl:defclass GetCameraImage-response (<GetCameraImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCameraImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCameraImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim-srv:<GetCameraImage-response> is deprecated: use turtlesim-srv:GetCameraImage-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <GetCameraImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:image-val is deprecated.  Use turtlesim-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'm_rows-val :lambda-list '(m))
(cl:defmethod m_rows-val ((m <GetCameraImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim-srv:m_rows-val is deprecated.  Use turtlesim-srv:m_rows instead.")
  (m_rows m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCameraImage-response>) ostream)
  "Serializes a message object of type '<GetCameraImage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'm_rows))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'm_rows))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCameraImage-response>) istream)
  "Deserializes a message object of type '<GetCameraImage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'm_rows) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'm_rows)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'turtlesim-msg:Mrow))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCameraImage-response>)))
  "Returns string type for a service object of type '<GetCameraImage-response>"
  "turtlesim/GetCameraImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraImage-response)))
  "Returns string type for a service object of type 'GetCameraImage-response"
  "turtlesim/GetCameraImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCameraImage-response>)))
  "Returns md5sum for a message object of type '<GetCameraImage-response>"
  "a8626d9b6b0964d1462185bf70bbc823")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCameraImage-response)))
  "Returns md5sum for a message object of type 'GetCameraImage-response"
  "a8626d9b6b0964d1462185bf70bbc823")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCameraImage-response>)))
  "Returns full string definition for message of type '<GetCameraImage-response>"
  (cl:format cl:nil "sensor_msgs/Image image~%Mrow[] m_rows~%~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: turtlesim/Mrow~%Cell[] cells~%~%================================================================================~%MSG: turtlesim/Cell~%float32 red~%float32 green ~%float32 blue~%float32 distance ~%float32 occupy ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCameraImage-response)))
  "Returns full string definition for message of type 'GetCameraImage-response"
  (cl:format cl:nil "sensor_msgs/Image image~%Mrow[] m_rows~%~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: turtlesim/Mrow~%Cell[] cells~%~%================================================================================~%MSG: turtlesim/Cell~%float32 red~%float32 green ~%float32 blue~%float32 distance ~%float32 occupy ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCameraImage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'm_rows) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCameraImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCameraImage-response
    (cl:cons ':image (image msg))
    (cl:cons ':m_rows (m_rows msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCameraImage)))
  'GetCameraImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCameraImage)))
  'GetCameraImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraImage)))
  "Returns string type for a service object of type '<GetCameraImage>"
  "turtlesim/GetCameraImage")