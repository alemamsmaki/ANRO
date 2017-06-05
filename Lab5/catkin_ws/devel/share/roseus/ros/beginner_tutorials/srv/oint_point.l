;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::oint_point)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'oint_point (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::OINT_POINT")
  (make-package "BEGINNER_TUTORIALS::OINT_POINT"))
(unless (find-package "BEGINNER_TUTORIALS::OINT_POINTREQUEST")
  (make-package "BEGINNER_TUTORIALS::OINT_POINTREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::OINT_POINTRESPONSE")
  (make-package "BEGINNER_TUTORIALS::OINT_POINTRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::oint_pointRequest
  :super ros::object
  :slots (_x _y _z _time ))

(defmethod beginner_tutorials::oint_pointRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _time (float __time))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass beginner_tutorials::oint_pointResponse
  :super ros::object
  :slots (_status ))

(defmethod beginner_tutorials::oint_pointResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::oint_point
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::oint_point :md5sum-) "dddedc15b36c5ba529f4bc4fa44289e0")
(setf (get beginner_tutorials::oint_point :datatype-) "beginner_tutorials/oint_point")
(setf (get beginner_tutorials::oint_point :request) beginner_tutorials::oint_pointRequest)
(setf (get beginner_tutorials::oint_point :response) beginner_tutorials::oint_pointResponse)

(defmethod beginner_tutorials::oint_pointRequest
  (:response () (instance beginner_tutorials::oint_pointResponse :init)))

(setf (get beginner_tutorials::oint_pointRequest :md5sum-) "dddedc15b36c5ba529f4bc4fa44289e0")
(setf (get beginner_tutorials::oint_pointRequest :datatype-) "beginner_tutorials/oint_pointRequest")
(setf (get beginner_tutorials::oint_pointRequest :definition-)
      "float64 x
float64 y
float64 z
float64 time
---
string status

")

(setf (get beginner_tutorials::oint_pointResponse :md5sum-) "dddedc15b36c5ba529f4bc4fa44289e0")
(setf (get beginner_tutorials::oint_pointResponse :datatype-) "beginner_tutorials/oint_pointResponse")
(setf (get beginner_tutorials::oint_pointResponse :definition-)
      "float64 x
float64 y
float64 z
float64 time
---
string status

")



(provide :beginner_tutorials/oint_point "dddedc15b36c5ba529f4bc4fa44289e0")


