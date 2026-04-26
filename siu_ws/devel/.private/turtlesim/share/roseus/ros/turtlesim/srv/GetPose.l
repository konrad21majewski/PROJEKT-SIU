;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::GetPose)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'GetPose (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::GETPOSE")
  (make-package "TURTLESIM::GETPOSE"))
(unless (find-package "TURTLESIM::GETPOSEREQUEST")
  (make-package "TURTLESIM::GETPOSEREQUEST"))
(unless (find-package "TURTLESIM::GETPOSERESPONSE")
  (make-package "TURTLESIM::GETPOSERESPONSE"))

(in-package "ROS")





(defclass turtlesim::GetPoseRequest
  :super ros::object
  :slots (_name ))

(defmethod turtlesim::GetPoseRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtlesim::GetPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod turtlesim::GetPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance turtlesim::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; turtlesim/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtlesim/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtlesim/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass turtlesim::GetPose
  :super ros::object
  :slots ())

(setf (get turtlesim::GetPose :md5sum-) "d2e1f87d4f41d06b5a0b3a27a28052fe")
(setf (get turtlesim::GetPose :datatype-) "turtlesim/GetPose")
(setf (get turtlesim::GetPose :request) turtlesim::GetPoseRequest)
(setf (get turtlesim::GetPose :response) turtlesim::GetPoseResponse)

(defmethod turtlesim::GetPoseRequest
  (:response () (instance turtlesim::GetPoseResponse :init)))

(setf (get turtlesim::GetPoseRequest :md5sum-) "d2e1f87d4f41d06b5a0b3a27a28052fe")
(setf (get turtlesim::GetPoseRequest :datatype-) "turtlesim/GetPoseRequest")
(setf (get turtlesim::GetPoseRequest :definition-)
      "string name
---
turtlesim/Pose pose


================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
")

(setf (get turtlesim::GetPoseResponse :md5sum-) "d2e1f87d4f41d06b5a0b3a27a28052fe")
(setf (get turtlesim::GetPoseResponse :datatype-) "turtlesim/GetPoseResponse")
(setf (get turtlesim::GetPoseResponse :definition-)
      "string name
---
turtlesim/Pose pose


================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
")



(provide :turtlesim/GetPose "d2e1f87d4f41d06b5a0b3a27a28052fe")


