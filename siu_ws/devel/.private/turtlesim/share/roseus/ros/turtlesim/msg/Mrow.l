;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::Mrow)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'Mrow (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::MROW")
  (make-package "TURTLESIM::MROW"))

(in-package "ROS")
;;//! \htmlinclude Mrow.msg.html


(defclass turtlesim::Mrow
  :super ros::object
  :slots (_cells ))

(defmethod turtlesim::Mrow
  (:init
   (&key
    ((:cells __cells) ())
    )
   (send-super :init)
   (setq _cells __cells)
   self)
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; turtlesim/Cell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtlesim/Cell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtlesim/Cell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance turtlesim::Cell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get turtlesim::Mrow :md5sum-) "dc4d4a6faec42c0efee83680cff86b79")
(setf (get turtlesim::Mrow :datatype-) "turtlesim/Mrow")
(setf (get turtlesim::Mrow :definition-)
      "Cell[] cells

================================================================================
MSG: turtlesim/Cell
float32 red
float32 green 
float32 blue
float32 distance 
float32 occupy 
")



(provide :turtlesim/Mrow "dc4d4a6faec42c0efee83680cff86b79")


