;; Auto-generated. Do not edit!


(when (boundp 'myserial::myserial)
  (if (not (find-package "MYSERIAL"))
    (make-package "MYSERIAL"))
  (shadow 'myserial (find-package "MYSERIAL")))
(unless (find-package "MYSERIAL::MYSERIAL")
  (make-package "MYSERIAL::MYSERIAL"))

(in-package "ROS")
;;//! \htmlinclude myserial.msg.html


(defclass myserial::myserial
  :super ros::object
  :slots (_a1 _a2 _a3 _a4 _a5 _a6 _a7 _a8 _a9 ))

(defmethod myserial::myserial
  (:init
   (&key
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:a3 __a3) 0.0)
    ((:a4 __a4) 0.0)
    ((:a5 __a5) 0.0)
    ((:a6 __a6) 0.0)
    ((:a7 __a7) 0.0)
    ((:a8 __a8) 0.0)
    ((:a9 __a9) 0.0)
    )
   (send-super :init)
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _a3 (float __a3))
   (setq _a4 (float __a4))
   (setq _a5 (float __a5))
   (setq _a6 (float __a6))
   (setq _a7 (float __a7))
   (setq _a8 (float __a8))
   (setq _a9 (float __a9))
   self)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:a3
   (&optional __a3)
   (if __a3 (setq _a3 __a3)) _a3)
  (:a4
   (&optional __a4)
   (if __a4 (setq _a4 __a4)) _a4)
  (:a5
   (&optional __a5)
   (if __a5 (setq _a5 __a5)) _a5)
  (:a6
   (&optional __a6)
   (if __a6 (setq _a6 __a6)) _a6)
  (:a7
   (&optional __a7)
   (if __a7 (setq _a7 __a7)) _a7)
  (:a8
   (&optional __a8)
   (if __a8 (setq _a8 __a8)) _a8)
  (:a9
   (&optional __a9)
   (if __a9 (setq _a9 __a9)) _a9)
  (:serialization-length
   ()
   (+
    ;; float32 _a1
    4
    ;; float32 _a2
    4
    ;; float32 _a3
    4
    ;; float32 _a4
    4
    ;; float32 _a5
    4
    ;; float32 _a6
    4
    ;; float32 _a7
    4
    ;; float32 _a8
    4
    ;; float32 _a9
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a3
       (sys::poke _a3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a4
       (sys::poke _a4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a5
       (sys::poke _a5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a6
       (sys::poke _a6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a7
       (sys::poke _a7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a8
       (sys::poke _a8 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a9
       (sys::poke _a9 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a1
     (setq _a1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a2
     (setq _a2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a3
     (setq _a3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a4
     (setq _a4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a5
     (setq _a5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a6
     (setq _a6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a7
     (setq _a7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a8
     (setq _a8 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a9
     (setq _a9 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get myserial::myserial :md5sum-) "f27b126aa6a2fa91707e5d51287b08bd")
(setf (get myserial::myserial :datatype-) "myserial/myserial")
(setf (get myserial::myserial :definition-)
      "float32 a1
float32 a2
float32 a3
float32 a4
float32 a5
float32 a6
float32 a7
float32 a8
float32 a9

")



(provide :myserial/myserial "f27b126aa6a2fa91707e5d51287b08bd")


