; Auto-generated. Do not edit!


(cl:in-package robotino_leds-srv)


;//! \htmlinclude Sinalize-request.msg.html

(cl:defclass <Sinalize-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (times
    :reader times
    :initarg :times
    :type cl:fixnum
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Sinalize-request (<Sinalize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sinalize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sinalize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_leds-srv:<Sinalize-request> is deprecated: use robotino_leds-srv:Sinalize-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Sinalize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_leds-srv:mode-val is deprecated.  Use robotino_leds-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <Sinalize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_leds-srv:colors-val is deprecated.  Use robotino_leds-srv:colors instead.")
  (colors m))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <Sinalize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_leds-srv:times-val is deprecated.  Use robotino_leds-srv:times instead.")
  (times m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <Sinalize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_leds-srv:rate-val is deprecated.  Use robotino_leds-srv:rate instead.")
  (rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sinalize-request>) ostream)
  "Serializes a message object of type '<Sinalize-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'colors))
  (cl:let* ((signed (cl:slot-value msg 'times)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sinalize-request>) istream)
  "Deserializes a message object of type '<Sinalize-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'times) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sinalize-request>)))
  "Returns string type for a service object of type '<Sinalize-request>"
  "robotino_leds/SinalizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sinalize-request)))
  "Returns string type for a service object of type 'Sinalize-request"
  "robotino_leds/SinalizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sinalize-request>)))
  "Returns md5sum for a message object of type '<Sinalize-request>"
  "ac57edbc4e7f07bb4edc9b37940b5f41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sinalize-request)))
  "Returns md5sum for a message object of type 'Sinalize-request"
  "ac57edbc4e7f07bb4edc9b37940b5f41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sinalize-request>)))
  "Returns full string definition for message of type '<Sinalize-request>"
  (cl:format cl:nil "int8 mode~%~%~%~%~%int8[] colors~%~%~%~%~%~%~%~%~%~%~%~%~%int8 times~%~%~%~%float32 rate~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sinalize-request)))
  "Returns full string definition for message of type 'Sinalize-request"
  (cl:format cl:nil "int8 mode~%~%~%~%~%int8[] colors~%~%~%~%~%~%~%~%~%~%~%~%~%int8 times~%~%~%~%float32 rate~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sinalize-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sinalize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Sinalize-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':colors (colors msg))
    (cl:cons ':times (times msg))
    (cl:cons ':rate (rate msg))
))
;//! \htmlinclude Sinalize-response.msg.html

(cl:defclass <Sinalize-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Sinalize-response (<Sinalize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sinalize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sinalize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_leds-srv:<Sinalize-response> is deprecated: use robotino_leds-srv:Sinalize-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Sinalize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_leds-srv:success-val is deprecated.  Use robotino_leds-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Sinalize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_leds-srv:message-val is deprecated.  Use robotino_leds-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sinalize-response>) ostream)
  "Serializes a message object of type '<Sinalize-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sinalize-response>) istream)
  "Deserializes a message object of type '<Sinalize-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sinalize-response>)))
  "Returns string type for a service object of type '<Sinalize-response>"
  "robotino_leds/SinalizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sinalize-response)))
  "Returns string type for a service object of type 'Sinalize-response"
  "robotino_leds/SinalizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sinalize-response>)))
  "Returns md5sum for a message object of type '<Sinalize-response>"
  "ac57edbc4e7f07bb4edc9b37940b5f41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sinalize-response)))
  "Returns md5sum for a message object of type 'Sinalize-response"
  "ac57edbc4e7f07bb4edc9b37940b5f41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sinalize-response>)))
  "Returns full string definition for message of type '<Sinalize-response>"
  (cl:format cl:nil "~%bool success~%~%~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sinalize-response)))
  "Returns full string definition for message of type 'Sinalize-response"
  (cl:format cl:nil "~%bool success~%~%~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sinalize-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sinalize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Sinalize-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Sinalize)))
  'Sinalize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Sinalize)))
  'Sinalize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sinalize)))
  "Returns string type for a service object of type '<Sinalize>"
  "robotino_leds/Sinalize")