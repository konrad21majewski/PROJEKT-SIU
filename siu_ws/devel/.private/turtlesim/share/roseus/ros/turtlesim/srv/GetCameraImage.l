;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::GetCameraImage)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'GetCameraImage (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::GETCAMERAIMAGE")
  (make-package "TURTLESIM::GETCAMERAIMAGE"))
(unless (find-package "TURTLESIM::GETCAMERAIMAGEREQUEST")
  (make-package "TURTLESIM::GETCAMERAIMAGEREQUEST"))
(unless (find-package "TURTLESIM::GETCAMERAIMAGERESPONSE")
  (make-package "TURTLESIM::GETCAMERAIMAGERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass turtlesim::GetCameraImageRequest
  :super ros::object
  :slots (_name _frame_pixel_size _cell_count _x_offset _goal _show_matrix_cells_and_goal ))

(defmethod turtlesim::GetCameraImageRequest
  (:init
   (&key
    ((:name __name) "")
    ((:frame_pixel_size __frame_pixel_size) 0)
    ((:cell_count __cell_count) 0)
    ((:x_offset __x_offset) 0)
    ((:goal __goal) (instance turtlesim::Pose :init))
    ((:show_matrix_cells_and_goal __show_matrix_cells_and_goal) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _frame_pixel_size (round __frame_pixel_size))
   (setq _cell_count (round __cell_count))
   (setq _x_offset (round __x_offset))
   (setq _goal __goal)
   (setq _show_matrix_cells_and_goal __show_matrix_cells_and_goal)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:frame_pixel_size
   (&optional __frame_pixel_size)
   (if __frame_pixel_size (setq _frame_pixel_size __frame_pixel_size)) _frame_pixel_size)
  (:cell_count
   (&optional __cell_count)
   (if __cell_count (setq _cell_count __cell_count)) _cell_count)
  (:x_offset
   (&optional __x_offset)
   (if __x_offset (setq _x_offset __x_offset)) _x_offset)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:show_matrix_cells_and_goal
   (&optional (__show_matrix_cells_and_goal :null))
   (if (not (eq __show_matrix_cells_and_goal :null)) (setq _show_matrix_cells_and_goal __show_matrix_cells_and_goal)) _show_matrix_cells_and_goal)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int16 _frame_pixel_size
    2
    ;; int16 _cell_count
    2
    ;; int16 _x_offset
    2
    ;; turtlesim/Pose _goal
    (send _goal :serialization-length)
    ;; bool _show_matrix_cells_and_goal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _frame_pixel_size
       (write-word _frame_pixel_size s)
     ;; int16 _cell_count
       (write-word _cell_count s)
     ;; int16 _x_offset
       (write-word _x_offset s)
     ;; turtlesim/Pose _goal
       (send _goal :serialize s)
     ;; bool _show_matrix_cells_and_goal
       (if _show_matrix_cells_and_goal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _frame_pixel_size
     (setq _frame_pixel_size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cell_count
     (setq _cell_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _x_offset
     (setq _x_offset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; turtlesim/Pose _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; bool _show_matrix_cells_and_goal
     (setq _show_matrix_cells_and_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlesim::GetCameraImageResponse
  :super ros::object
  :slots (_image _m_rows ))

(defmethod turtlesim::GetCameraImageResponse
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:m_rows __m_rows) ())
    )
   (send-super :init)
   (setq _image __image)
   (setq _m_rows __m_rows)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:m_rows
   (&rest __m_rows)
   (if (keywordp (car __m_rows))
       (send* _m_rows __m_rows)
     (progn
       (if __m_rows (setq _m_rows (car __m_rows)))
       _m_rows)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; turtlesim/Mrow[] _m_rows
    (apply #'+ (send-all _m_rows :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; turtlesim/Mrow[] _m_rows
     (write-long (length _m_rows) s)
     (dolist (elem _m_rows)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; turtlesim/Mrow[] _m_rows
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _m_rows (let (r) (dotimes (i n) (push (instance turtlesim::Mrow :init) r)) r))
     (dolist (elem- _m_rows)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass turtlesim::GetCameraImage
  :super ros::object
  :slots ())

(setf (get turtlesim::GetCameraImage :md5sum-) "a8626d9b6b0964d1462185bf70bbc823")
(setf (get turtlesim::GetCameraImage :datatype-) "turtlesim/GetCameraImage")
(setf (get turtlesim::GetCameraImage :request) turtlesim::GetCameraImageRequest)
(setf (get turtlesim::GetCameraImage :response) turtlesim::GetCameraImageResponse)

(defmethod turtlesim::GetCameraImageRequest
  (:response () (instance turtlesim::GetCameraImageResponse :init)))

(setf (get turtlesim::GetCameraImageRequest :md5sum-) "a8626d9b6b0964d1462185bf70bbc823")
(setf (get turtlesim::GetCameraImageRequest :datatype-) "turtlesim/GetCameraImageRequest")
(setf (get turtlesim::GetCameraImageRequest :definition-)
      "string name
int16 frame_pixel_size
int16 cell_count
int16 x_offset
turtlesim/Pose goal
bool show_matrix_cells_and_goal

================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
---
sensor_msgs/Image image
Mrow[] m_rows



================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: turtlesim/Mrow
Cell[] cells

================================================================================
MSG: turtlesim/Cell
float32 red
float32 green 
float32 blue
float32 distance 
")

(setf (get turtlesim::GetCameraImageResponse :md5sum-) "a8626d9b6b0964d1462185bf70bbc823")
(setf (get turtlesim::GetCameraImageResponse :datatype-) "turtlesim/GetCameraImageResponse")
(setf (get turtlesim::GetCameraImageResponse :definition-)
      "string name
int16 frame_pixel_size
int16 cell_count
int16 x_offset
turtlesim/Pose goal
bool show_matrix_cells_and_goal

================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
---
sensor_msgs/Image image
Mrow[] m_rows



================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: turtlesim/Mrow
Cell[] cells

================================================================================
MSG: turtlesim/Cell
float32 red
float32 green 
float32 blue
float32 distance 
")



(provide :turtlesim/GetCameraImage "a8626d9b6b0964d1462185bf70bbc823")


