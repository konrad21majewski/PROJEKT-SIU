;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::GetTurtles)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'GetTurtles (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::GETTURTLES")
  (make-package "TURTLESIM::GETTURTLES"))
(unless (find-package "TURTLESIM::GETTURTLESREQUEST")
  (make-package "TURTLESIM::GETTURTLESREQUEST"))
(unless (find-package "TURTLESIM::GETTURTLESRESPONSE")
  (make-package "TURTLESIM::GETTURTLESRESPONSE"))

(in-package "ROS")





(defclass turtlesim::GetTurtlesRequest
  :super ros::object
  :slots ())

(defmethod turtlesim::GetTurtlesRequest
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

(defclass turtlesim::GetTurtlesResponse
  :super ros::object
  :slots (_list ))

(defmethod turtlesim::GetTurtlesResponse
  (:init
   (&key
    ((:list __list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _list __list)
   self)
  (:list
   (&optional __list)
   (if __list (setq _list __list)) _list)
  (:serialization-length
   ()
   (+
    ;; string[] _list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass turtlesim::GetTurtles
  :super ros::object
  :slots ())

(setf (get turtlesim::GetTurtles :md5sum-) "8e09fa9aad51508cfdcab3b64f048ce0")
(setf (get turtlesim::GetTurtles :datatype-) "turtlesim/GetTurtles")
(setf (get turtlesim::GetTurtles :request) turtlesim::GetTurtlesRequest)
(setf (get turtlesim::GetTurtles :response) turtlesim::GetTurtlesResponse)

(defmethod turtlesim::GetTurtlesRequest
  (:response () (instance turtlesim::GetTurtlesResponse :init)))

(setf (get turtlesim::GetTurtlesRequest :md5sum-) "8e09fa9aad51508cfdcab3b64f048ce0")
(setf (get turtlesim::GetTurtlesRequest :datatype-) "turtlesim/GetTurtlesRequest")
(setf (get turtlesim::GetTurtlesRequest :definition-)
      "
---
string[] list

")

(setf (get turtlesim::GetTurtlesResponse :md5sum-) "8e09fa9aad51508cfdcab3b64f048ce0")
(setf (get turtlesim::GetTurtlesResponse :datatype-) "turtlesim/GetTurtlesResponse")
(setf (get turtlesim::GetTurtlesResponse :definition-)
      "
---
string[] list

")



(provide :turtlesim/GetTurtles "8e09fa9aad51508cfdcab3b64f048ce0")


