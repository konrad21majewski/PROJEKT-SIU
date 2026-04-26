;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::GetFrameSize)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'GetFrameSize (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::GETFRAMESIZE")
  (make-package "TURTLESIM::GETFRAMESIZE"))
(unless (find-package "TURTLESIM::GETFRAMESIZEREQUEST")
  (make-package "TURTLESIM::GETFRAMESIZEREQUEST"))
(unless (find-package "TURTLESIM::GETFRAMESIZERESPONSE")
  (make-package "TURTLESIM::GETFRAMESIZERESPONSE"))

(in-package "ROS")





(defclass turtlesim::GetFrameSizeRequest
  :super ros::object
  :slots ())

(defmethod turtlesim::GetFrameSizeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass turtlesim::GetFrameSizeResponse
  :super ros::object
  :slots (_width _height ))

(defmethod turtlesim::GetFrameSizeResponse
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlesim::GetFrameSize
  :super ros::object
  :slots ())

(setf (get turtlesim::GetFrameSize :md5sum-) "ed3043f094c99bdd8118bc5b0ddb14ba")
(setf (get turtlesim::GetFrameSize :datatype-) "turtlesim/GetFrameSize")
(setf (get turtlesim::GetFrameSize :request) turtlesim::GetFrameSizeRequest)
(setf (get turtlesim::GetFrameSize :response) turtlesim::GetFrameSizeResponse)

(defmethod turtlesim::GetFrameSizeRequest
  (:response () (instance turtlesim::GetFrameSizeResponse :init)))

(setf (get turtlesim::GetFrameSizeRequest :md5sum-) "ed3043f094c99bdd8118bc5b0ddb14ba")
(setf (get turtlesim::GetFrameSizeRequest :datatype-) "turtlesim/GetFrameSizeRequest")
(setf (get turtlesim::GetFrameSizeRequest :definition-)
      "
---
float32 width
float32 height

")

(setf (get turtlesim::GetFrameSizeResponse :md5sum-) "ed3043f094c99bdd8118bc5b0ddb14ba")
(setf (get turtlesim::GetFrameSizeResponse :datatype-) "turtlesim/GetFrameSizeResponse")
(setf (get turtlesim::GetFrameSizeResponse :definition-)
      "
---
float32 width
float32 height

")



(provide :turtlesim/GetFrameSize "ed3043f094c99bdd8118bc5b0ddb14ba")


