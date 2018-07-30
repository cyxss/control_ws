; Auto-generated. Do not edit!


(cl:in-package path_planning-msg)


;//! \htmlinclude velocity.msg.html

(cl:defclass <velocity> (roslisp-msg-protocol:ros-message)
  ((v_x
    :reader v_x
    :initarg :v_x
    :type cl:float
    :initform 0.0)
   (v_y
    :reader v_y
    :initarg :v_y
    :type cl:float
    :initform 0.0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:float
    :initform 0.0))
)

(cl:defclass velocity (<velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning-msg:<velocity> is deprecated: use path_planning-msg:velocity instead.")))

(cl:ensure-generic-function 'v_x-val :lambda-list '(m))
(cl:defmethod v_x-val ((m <velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning-msg:v_x-val is deprecated.  Use path_planning-msg:v_x instead.")
  (v_x m))

(cl:ensure-generic-function 'v_y-val :lambda-list '(m))
(cl:defmethod v_y-val ((m <velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning-msg:v_y-val is deprecated.  Use path_planning-msg:v_y instead.")
  (v_y m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning-msg:reverse-val is deprecated.  Use path_planning-msg:reverse instead.")
  (reverse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <velocity>) ostream)
  "Serializes a message object of type '<velocity>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reverse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <velocity>) istream)
  "Deserializes a message object of type '<velocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reverse) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<velocity>)))
  "Returns string type for a message object of type '<velocity>"
  "path_planning/velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'velocity)))
  "Returns string type for a message object of type 'velocity"
  "path_planning/velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<velocity>)))
  "Returns md5sum for a message object of type '<velocity>"
  "3eda26dffef5b0c902c73badc518ee3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'velocity)))
  "Returns md5sum for a message object of type 'velocity"
  "3eda26dffef5b0c902c73badc518ee3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<velocity>)))
  "Returns full string definition for message of type '<velocity>"
  (cl:format cl:nil "float32 v_x~%float32 v_y~%float32 reverse~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'velocity)))
  "Returns full string definition for message of type 'velocity"
  (cl:format cl:nil "float32 v_x~%float32 v_y~%float32 reverse~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <velocity>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'velocity
    (cl:cons ':v_x (v_x msg))
    (cl:cons ':v_y (v_y msg))
    (cl:cons ':reverse (reverse msg))
))
