;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::GetSonar)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'GetSonar (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::GETSONAR")
  (make-package "TURTLESIM::GETSONAR"))
(unless (find-package "TURTLESIM::GETSONARREQUEST")
  (make-package "TURTLESIM::GETSONARREQUEST"))
(unless (find-package "TURTLESIM::GETSONARRESPONSE")
  (make-package "TURTLESIM::GETSONARRESPONSE"))

(in-package "ROS")





(defclass turtlesim::GetSonarRequest
  :super ros::object
  :slots (_fov_center _fov_range _range_min _range_max _name ))

(defmethod turtlesim::GetSonarRequest
  (:init
   (&key
    ((:fov_center __fov_center) 0.0)
    ((:fov_range __fov_range) 0.0)
    ((:range_min __range_min) 0.0)
    ((:range_max __range_max) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _fov_center (float __fov_center))
   (setq _fov_range (float __fov_range))
   (setq _range_min (float __range_min))
   (setq _range_max (float __range_max))
   (setq _name (string __name))
   self)
  (:fov_center
   (&optional __fov_center)
   (if __fov_center (setq _fov_center __fov_center)) _fov_center)
  (:fov_range
   (&optional __fov_range)
   (if __fov_range (setq _fov_range __fov_range)) _fov_range)
  (:range_min
   (&optional __range_min)
   (if __range_min (setq _range_min __range_min)) _range_min)
  (:range_max
   (&optional __range_max)
   (if __range_max (setq _range_max __range_max)) _range_max)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; float32 _fov_center
    4
    ;; float32 _fov_range
    4
    ;; float32 _range_min
    4
    ;; float32 _range_max
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _fov_center
       (sys::poke _fov_center (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fov_range
       (sys::poke _fov_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_min
       (sys::poke _range_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_max
       (sys::poke _range_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _fov_center
     (setq _fov_center (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fov_range
     (setq _fov_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_min
     (setq _range_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_max
     (setq _range_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtlesim::GetSonarResponse
  :super ros::object
  :slots (_closest ))

(defmethod turtlesim::GetSonarResponse
  (:init
   (&key
    ((:closest __closest) 0.0)
    )
   (send-super :init)
   (setq _closest (float __closest))
   self)
  (:closest
   (&optional __closest)
   (if __closest (setq _closest __closest)) _closest)
  (:serialization-length
   ()
   (+
    ;; float32 _closest
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _closest
       (sys::poke _closest (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _closest
     (setq _closest (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim::GetSonar
  :super ros::object
  :slots ())

(setf (get turtlesim::GetSonar :md5sum-) "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(setf (get turtlesim::GetSonar :datatype-) "turtlesim/GetSonar")
(setf (get turtlesim::GetSonar :request) turtlesim::GetSonarRequest)
(setf (get turtlesim::GetSonar :response) turtlesim::GetSonarResponse)

(defmethod turtlesim::GetSonarRequest
  (:response () (instance turtlesim::GetSonarResponse :init)))

(setf (get turtlesim::GetSonarRequest :md5sum-) "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(setf (get turtlesim::GetSonarRequest :datatype-) "turtlesim/GetSonarRequest")
(setf (get turtlesim::GetSonarRequest :definition-)
      "float32 fov_center
float32 fov_range
float32 range_min
float32 range_max
string name
---
float32 closest

")

(setf (get turtlesim::GetSonarResponse :md5sum-) "1cfc3e38ad4d4d3e12abc0a04d9a93e2")
(setf (get turtlesim::GetSonarResponse :datatype-) "turtlesim/GetSonarResponse")
(setf (get turtlesim::GetSonarResponse :definition-)
      "float32 fov_center
float32 fov_range
float32 range_min
float32 range_max
string name
---
float32 closest

")



(provide :turtlesim/GetSonar "1cfc3e38ad4d4d3e12abc0a04d9a93e2")


