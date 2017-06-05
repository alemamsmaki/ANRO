;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Jint_Control)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Jint_Control (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::JINT_CONTROL")
  (make-package "BEGINNER_TUTORIALS::JINT_CONTROL"))
(unless (find-package "BEGINNER_TUTORIALS::JINT_CONTROLREQUEST")
  (make-package "BEGINNER_TUTORIALS::JINT_CONTROLREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::JINT_CONTROLRESPONSE")
  (make-package "BEGINNER_TUTORIALS::JINT_CONTROLRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::Jint_ControlRequest
  :super ros::object
  :slots (_typ _t1 _t2 _t3 _time ))

(defmethod beginner_tutorials::Jint_ControlRequest
  (:init
   (&key
    ((:typ __typ) 0)
    ((:t1 __t1) 0.0)
    ((:t2 __t2) 0.0)
    ((:t3 __t3) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _typ (round __typ))
   (setq _t1 (float __t1))
   (setq _t2 (float __t2))
   (setq _t3 (float __t3))
   (setq _time (float __time))
   self)
  (:typ
   (&optional __typ)
   (if __typ (setq _typ __typ)) _typ)
  (:t1
   (&optional __t1)
   (if __t1 (setq _t1 __t1)) _t1)
  (:t2
   (&optional __t2)
   (if __t2 (setq _t2 __t2)) _t2)
  (:t3
   (&optional __t3)
   (if __t3 (setq _t3 __t3)) _t3)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; int8 _typ
    1
    ;; float32 _t1
    4
    ;; float32 _t2
    4
    ;; float32 _t3
    4
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _typ
       (write-byte _typ s)
     ;; float32 _t1
       (sys::poke _t1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t2
       (sys::poke _t2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t3
       (sys::poke _t3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _typ
     (setq _typ (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _typ 127) (setq _typ (- _typ 256)))
   ;; float32 _t1
     (setq _t1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t2
     (setq _t2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t3
     (setq _t3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beginner_tutorials::Jint_ControlResponse
  :super ros::object
  :slots (_status ))

(defmethod beginner_tutorials::Jint_ControlResponse
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

(defclass beginner_tutorials::Jint_Control
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::Jint_Control :md5sum-) "27dce5e8a7342082f1bb452fe4d0a953")
(setf (get beginner_tutorials::Jint_Control :datatype-) "beginner_tutorials/Jint_Control")
(setf (get beginner_tutorials::Jint_Control :request) beginner_tutorials::Jint_ControlRequest)
(setf (get beginner_tutorials::Jint_Control :response) beginner_tutorials::Jint_ControlResponse)

(defmethod beginner_tutorials::Jint_ControlRequest
  (:response () (instance beginner_tutorials::Jint_ControlResponse :init)))

(setf (get beginner_tutorials::Jint_ControlRequest :md5sum-) "27dce5e8a7342082f1bb452fe4d0a953")
(setf (get beginner_tutorials::Jint_ControlRequest :datatype-) "beginner_tutorials/Jint_ControlRequest")
(setf (get beginner_tutorials::Jint_ControlRequest :definition-)
      "int8 typ
float32 t1
float32 t2
float32 t3
float32 time
---
string status

")

(setf (get beginner_tutorials::Jint_ControlResponse :md5sum-) "27dce5e8a7342082f1bb452fe4d0a953")
(setf (get beginner_tutorials::Jint_ControlResponse :datatype-) "beginner_tutorials/Jint_ControlResponse")
(setf (get beginner_tutorials::Jint_ControlResponse :definition-)
      "int8 typ
float32 t1
float32 t2
float32 t3
float32 time
---
string status

")



(provide :beginner_tutorials/Jint_Control "27dce5e8a7342082f1bb452fe4d0a953")


