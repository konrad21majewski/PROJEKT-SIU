;; Auto-generated. Do not edit!


(when (boundp 'turtlesim::Cell)
  (if (not (find-package "TURTLESIM"))
    (make-package "TURTLESIM"))
  (shadow 'Cell (find-package "TURTLESIM")))
(unless (find-package "TURTLESIM::CELL")
  (make-package "TURTLESIM::CELL"))

(in-package "ROS")
;;//! \htmlinclude Cell.msg.html


(defclass turtlesim::Cell
  :super ros::object
  :slots (_red _green _blue _distance _occupy ))

(defmethod turtlesim::Cell
  (:init
   (&key
    ((:red __red) 0.0)
    ((:green __green) 0.0)
    ((:blue __blue) 0.0)
    ((:distance __distance) 0.0)
    ((:occupy __occupy) 0.0)
    )
   (send-super :init)
   (setq _red (float __red))
   (setq _green (float __green))
   (setq _blue (float __blue))
   (setq _distance (float __distance))
   (setq _occupy (float __occupy))
   self)
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:occupy
   (&optional __occupy)
   (if __occupy (setq _occupy __occupy)) _occupy)
  (:serialization-length
   ()
   (+
    ;; float32 _red
    4
    ;; float32 _green
    4
    ;; float32 _blue
    4
    ;; float32 _distance
    4
    ;; float32 _occupy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _red
       (sys::poke _red (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _green
       (sys::poke _green (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _blue
       (sys::poke _blue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _occupy
       (sys::poke _occupy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _red
     (setq _red (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _green
     (setq _green (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _blue
     (setq _blue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _occupy
     (setq _occupy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlesim::Cell :md5sum-) "688818a433dd67daefd39f411918d8b4")
(setf (get turtlesim::Cell :datatype-) "turtlesim/Cell")
(setf (get turtlesim::Cell :definition-)
      "float32 red
float32 green 
float32 blue
float32 distance 
float32 occupy 
")



(provide :turtlesim/Cell "688818a433dd67daefd39f411918d8b4")


