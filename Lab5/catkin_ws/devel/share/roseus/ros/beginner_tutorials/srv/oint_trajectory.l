;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::oint_trajectory)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'oint_trajectory (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::OINT_TRAJECTORY")
  (make-package "BEGINNER_TUTORIALS::OINT_TRAJECTORY"))
(unless (find-package "BEGINNER_TUTORIALS::OINT_TRAJECTORYREQUEST")
  (make-package "BEGINNER_TUTORIALS::OINT_TRAJECTORYREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::OINT_TRAJECTORYRESPONSE")
  (make-package "BEGINNER_TUTORIALS::OINT_TRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::oint_trajectoryRequest
  :super ros::object
  :slots (_type ))

(defmethod beginner_tutorials::oint_trajectoryRequest
  (:init
   (&key
    ((:type __type) "")
    )
   (send-super :init)
   (setq _type (string __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::oint_trajectoryResponse
  :super ros::object
  :slots (_status ))

(defmethod beginner_tutorials::oint_trajectoryResponse
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

(defclass beginner_tutorials::oint_trajectory
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::oint_trajectory :md5sum-) "1b85c40201362e9a9064250d10c96489")
(setf (get beginner_tutorials::oint_trajectory :datatype-) "beginner_tutorials/oint_trajectory")
(setf (get beginner_tutorials::oint_trajectory :request) beginner_tutorials::oint_trajectoryRequest)
(setf (get beginner_tutorials::oint_trajectory :response) beginner_tutorials::oint_trajectoryResponse)

(defmethod beginner_tutorials::oint_trajectoryRequest
  (:response () (instance beginner_tutorials::oint_trajectoryResponse :init)))

(setf (get beginner_tutorials::oint_trajectoryRequest :md5sum-) "1b85c40201362e9a9064250d10c96489")
(setf (get beginner_tutorials::oint_trajectoryRequest :datatype-) "beginner_tutorials/oint_trajectoryRequest")
(setf (get beginner_tutorials::oint_trajectoryRequest :definition-)
      "string type
---
string status

")

(setf (get beginner_tutorials::oint_trajectoryResponse :md5sum-) "1b85c40201362e9a9064250d10c96489")
(setf (get beginner_tutorials::oint_trajectoryResponse :datatype-) "beginner_tutorials/oint_trajectoryResponse")
(setf (get beginner_tutorials::oint_trajectoryResponse :definition-)
      "string type
---
string status

")



(provide :beginner_tutorials/oint_trajectory "1b85c40201362e9a9064250d10c96489")


