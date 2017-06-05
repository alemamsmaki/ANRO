;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Oint_Control)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Oint_Control (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::OINT_CONTROL")
  (make-package "BEGINNER_TUTORIALS::OINT_CONTROL"))
(unless (find-package "BEGINNER_TUTORIALS::OINT_CONTROLREQUEST")
  (make-package "BEGINNER_TUTORIALS::OINT_CONTROLREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::OINT_CONTROLRESPONSE")
  (make-package "BEGINNER_TUTORIALS::OINT_CONTROLRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::Oint_ControlRequest
  :super ros::object
  :slots (_x _y _z _roll _pitch _yaw _time ))

(defmethod beginner_tutorials::Oint_ControlRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
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
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
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
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
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
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass beginner_tutorials::Oint_ControlResponse
  :super ros::object
  :slots (_status ))

(defmethod beginner_tutorials::Oint_ControlResponse
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

(defclass beginner_tutorials::Oint_Control
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::Oint_Control :md5sum-) "1875e42e845027bd6fcfaa530591c368")
(setf (get beginner_tutorials::Oint_Control :datatype-) "beginner_tutorials/Oint_Control")
(setf (get beginner_tutorials::Oint_Control :request) beginner_tutorials::Oint_ControlRequest)
(setf (get beginner_tutorials::Oint_Control :response) beginner_tutorials::Oint_ControlResponse)

(defmethod beginner_tutorials::Oint_ControlRequest
  (:response () (instance beginner_tutorials::Oint_ControlResponse :init)))

(setf (get beginner_tutorials::Oint_ControlRequest :md5sum-) "1875e42e845027bd6fcfaa530591c368")
(setf (get beginner_tutorials::Oint_ControlRequest :datatype-) "beginner_tutorials/Oint_ControlRequest")
(setf (get beginner_tutorials::Oint_ControlRequest :definition-)
      "float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
float64 time
---
string status

")

(setf (get beginner_tutorials::Oint_ControlResponse :md5sum-) "1875e42e845027bd6fcfaa530591c368")
(setf (get beginner_tutorials::Oint_ControlResponse :datatype-) "beginner_tutorials/Oint_ControlResponse")
(setf (get beginner_tutorials::Oint_ControlResponse :definition-)
      "float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
float64 time
---
string status

")



(provide :beginner_tutorials/Oint_Control "1875e42e845027bd6fcfaa530591c368")


