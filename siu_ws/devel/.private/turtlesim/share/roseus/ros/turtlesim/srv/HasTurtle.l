;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::HasTurtle)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'HasTurtle (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::HASTURTLE")
  (make-package "TURTLESIM::HASTURTLE"))
(unless (find-package "TURTLESIM::HASTURTLEREQUEST")
  (make-package "TURTLESIM::HASTURTLEREQUEST"))
(unless (find-package "TURTLESIM::HASTURTLERESPONSE")
  (make-package "TURTLESIM::HASTURTLERESPONSE"))

(in-package "ROS")





(defclass turtlesim::HasTurtleRequest
  :super ros::object
  :slots (_name ))

(defmethod turtlesim::HasTurtleRequest
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

(defclass turtlesim::HasTurtleResponse
  :super ros::object
  :slots (_result ))

(defmethod turtlesim::HasTurtleResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtlesim::HasTurtle
  :super ros::object
  :slots ())

(setf (get turtlesim::HasTurtle :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get turtlesim::HasTurtle :datatype-) "turtlesim/HasTurtle")
(setf (get turtlesim::HasTurtle :request) turtlesim::HasTurtleRequest)
(setf (get turtlesim::HasTurtle :response) turtlesim::HasTurtleResponse)

(defmethod turtlesim::HasTurtleRequest
  (:response () (instance turtlesim::HasTurtleResponse :init)))

(setf (get turtlesim::HasTurtleRequest :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get turtlesim::HasTurtleRequest :datatype-) "turtlesim/HasTurtleRequest")
(setf (get turtlesim::HasTurtleRequest :definition-)
      "string name
---
bool result
")

(setf (get turtlesim::HasTurtleResponse :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get turtlesim::HasTurtleResponse :datatype-) "turtlesim/HasTurtleResponse")
(setf (get turtlesim::HasTurtleResponse :definition-)
      "string name
---
bool result
")



(provide :turtlesim/HasTurtle "ee91d68745ef4d7a247816a59dffedf2")


