;; Auto-generated. Do not edit!


(when (boundp 'myserial::myserialsrv)
  (if (not (find-package "MYSERIAL"))
    (make-package "MYSERIAL"))
  (shadow 'myserialsrv (find-package "MYSERIAL")))
(unless (find-package "MYSERIAL::MYSERIALSRV")
  (make-package "MYSERIAL::MYSERIALSRV"))
(unless (find-package "MYSERIAL::MYSERIALSRVREQUEST")
  (make-package "MYSERIAL::MYSERIALSRVREQUEST"))
(unless (find-package "MYSERIAL::MYSERIALSRVRESPONSE")
  (make-package "MYSERIAL::MYSERIALSRVRESPONSE"))

(in-package "ROS")





(defclass myserial::myserialsrvRequest
  :super ros::object
  :slots (_A1 _A2 _A3 _A4 _A5 _A6 _A7 _A8 _A9 ))

(defmethod myserial::myserialsrvRequest
  (:init
   (&key
    ((:A1 __A1) 0.0)
    ((:A2 __A2) 0.0)
    ((:A3 __A3) 0.0)
    ((:A4 __A4) 0.0)
    ((:A5 __A5) 0.0)
    ((:A6 __A6) 0.0)
    ((:A7 __A7) 0.0)
    ((:A8 __A8) 0.0)
    ((:A9 __A9) 0.0)
    )
   (send-super :init)
   (setq _A1 (float __A1))
   (setq _A2 (float __A2))
   (setq _A3 (float __A3))
   (setq _A4 (float __A4))
   (setq _A5 (float __A5))
   (setq _A6 (float __A6))
   (setq _A7 (float __A7))
   (setq _A8 (float __A8))
   (setq _A9 (float __A9))
   self)
  (:A1
   (&optional __A1)
   (if __A1 (setq _A1 __A1)) _A1)
  (:A2
   (&optional __A2)
   (if __A2 (setq _A2 __A2)) _A2)
  (:A3
   (&optional __A3)
   (if __A3 (setq _A3 __A3)) _A3)
  (:A4
   (&optional __A4)
   (if __A4 (setq _A4 __A4)) _A4)
  (:A5
   (&optional __A5)
   (if __A5 (setq _A5 __A5)) _A5)
  (:A6
   (&optional __A6)
   (if __A6 (setq _A6 __A6)) _A6)
  (:A7
   (&optional __A7)
   (if __A7 (setq _A7 __A7)) _A7)
  (:A8
   (&optional __A8)
   (if __A8 (setq _A8 __A8)) _A8)
  (:A9
   (&optional __A9)
   (if __A9 (setq _A9 __A9)) _A9)
  (:serialization-length
   ()
   (+
    ;; float32 _A1
    4
    ;; float32 _A2
    4
    ;; float32 _A3
    4
    ;; float32 _A4
    4
    ;; float32 _A5
    4
    ;; float32 _A6
    4
    ;; float32 _A7
    4
    ;; float32 _A8
    4
    ;; float32 _A9
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _A1
       (sys::poke _A1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A2
       (sys::poke _A2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A3
       (sys::poke _A3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A4
       (sys::poke _A4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A5
       (sys::poke _A5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A6
       (sys::poke _A6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A7
       (sys::poke _A7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A8
       (sys::poke _A8 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _A9
       (sys::poke _A9 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _A1
     (setq _A1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A2
     (setq _A2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A3
     (setq _A3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A4
     (setq _A4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A5
     (setq _A5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A6
     (setq _A6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A7
     (setq _A7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A8
     (setq _A8 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _A9
     (setq _A9 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass myserial::myserialsrvResponse
  :super ros::object
  :slots (_B1 _B2 _B3 _B4 _B5 _B6 _B7 _B8 _B9 ))

(defmethod myserial::myserialsrvResponse
  (:init
   (&key
    ((:B1 __B1) 0.0)
    ((:B2 __B2) 0.0)
    ((:B3 __B3) 0.0)
    ((:B4 __B4) 0.0)
    ((:B5 __B5) 0.0)
    ((:B6 __B6) 0.0)
    ((:B7 __B7) 0.0)
    ((:B8 __B8) 0.0)
    ((:B9 __B9) 0.0)
    )
   (send-super :init)
   (setq _B1 (float __B1))
   (setq _B2 (float __B2))
   (setq _B3 (float __B3))
   (setq _B4 (float __B4))
   (setq _B5 (float __B5))
   (setq _B6 (float __B6))
   (setq _B7 (float __B7))
   (setq _B8 (float __B8))
   (setq _B9 (float __B9))
   self)
  (:B1
   (&optional __B1)
   (if __B1 (setq _B1 __B1)) _B1)
  (:B2
   (&optional __B2)
   (if __B2 (setq _B2 __B2)) _B2)
  (:B3
   (&optional __B3)
   (if __B3 (setq _B3 __B3)) _B3)
  (:B4
   (&optional __B4)
   (if __B4 (setq _B4 __B4)) _B4)
  (:B5
   (&optional __B5)
   (if __B5 (setq _B5 __B5)) _B5)
  (:B6
   (&optional __B6)
   (if __B6 (setq _B6 __B6)) _B6)
  (:B7
   (&optional __B7)
   (if __B7 (setq _B7 __B7)) _B7)
  (:B8
   (&optional __B8)
   (if __B8 (setq _B8 __B8)) _B8)
  (:B9
   (&optional __B9)
   (if __B9 (setq _B9 __B9)) _B9)
  (:serialization-length
   ()
   (+
    ;; float32 _B1
    4
    ;; float32 _B2
    4
    ;; float32 _B3
    4
    ;; float32 _B4
    4
    ;; float32 _B5
    4
    ;; float32 _B6
    4
    ;; float32 _B7
    4
    ;; float32 _B8
    4
    ;; float32 _B9
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _B1
       (sys::poke _B1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B2
       (sys::poke _B2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B3
       (sys::poke _B3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B4
       (sys::poke _B4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B5
       (sys::poke _B5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B6
       (sys::poke _B6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B7
       (sys::poke _B7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B8
       (sys::poke _B8 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B9
       (sys::poke _B9 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _B1
     (setq _B1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B2
     (setq _B2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B3
     (setq _B3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B4
     (setq _B4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B5
     (setq _B5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B6
     (setq _B6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B7
     (setq _B7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B8
     (setq _B8 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B9
     (setq _B9 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass myserial::myserialsrv
  :super ros::object
  :slots ())

(setf (get myserial::myserialsrv :md5sum-) "8201a68440ff5daa0bba491b406dad47")
(setf (get myserial::myserialsrv :datatype-) "myserial/myserialsrv")
(setf (get myserial::myserialsrv :request) myserial::myserialsrvRequest)
(setf (get myserial::myserialsrv :response) myserial::myserialsrvResponse)

(defmethod myserial::myserialsrvRequest
  (:response () (instance myserial::myserialsrvResponse :init)))

(setf (get myserial::myserialsrvRequest :md5sum-) "8201a68440ff5daa0bba491b406dad47")
(setf (get myserial::myserialsrvRequest :datatype-) "myserial/myserialsrvRequest")
(setf (get myserial::myserialsrvRequest :definition-)
      "float32 A1
float32 A2
float32 A3
float32 A4
float32 A5
float32 A6
float32 A7
float32 A8
float32 A9
---
float32 B1
float32 B2
float32 B3
float32 B4
float32 B5
float32 B6
float32 B7
float32 B8
float32 B9


")

(setf (get myserial::myserialsrvResponse :md5sum-) "8201a68440ff5daa0bba491b406dad47")
(setf (get myserial::myserialsrvResponse :datatype-) "myserial/myserialsrvResponse")
(setf (get myserial::myserialsrvResponse :definition-)
      "float32 A1
float32 A2
float32 A3
float32 A4
float32 A5
float32 A6
float32 A7
float32 A8
float32 A9
---
float32 B1
float32 B2
float32 B3
float32 B4
float32 B5
float32 B6
float32 B7
float32 B8
float32 B9


")



(provide :myserial/myserialsrv "8201a68440ff5daa0bba491b406dad47")


