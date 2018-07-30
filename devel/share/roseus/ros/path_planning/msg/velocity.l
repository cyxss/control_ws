;; Auto-generated. Do not edit!


(when (boundp 'path_planning::velocity)
  (if (not (find-package "PATH_PLANNING"))
    (make-package "PATH_PLANNING"))
  (shadow 'velocity (find-package "PATH_PLANNING")))
(unless (find-package "PATH_PLANNING::VELOCITY")
  (make-package "PATH_PLANNING::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude velocity.msg.html


(defclass path_planning::velocity
  :super ros::object
  :slots (_v_x _v_y _reverse ))

(defmethod path_planning::velocity
  (:init
   (&key
    ((:v_x __v_x) 0.0)
    ((:v_y __v_y) 0.0)
    ((:reverse __reverse) nil)
    )
   (send-super :init)
   (setq _v_x (float __v_x))
   (setq _v_y (float __v_y))
   (setq _reverse __reverse)
   self)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:serialization-length
   ()
   (+
    ;; float32 _v_x
    4
    ;; float32 _v_y
    4
    ;; bool _reverse
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_y
       (sys::poke _v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _v_x
     (setq _v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_y
     (setq _v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get path_planning::velocity :md5sum-) "06185deaaeca232469e4f80f9ff51b48")
(setf (get path_planning::velocity :datatype-) "path_planning/velocity")
(setf (get path_planning::velocity :definition-)
      "float32 v_x
float32 v_y
bool reverse


")



(provide :path_planning/velocity "06185deaaeca232469e4f80f9ff51b48")


