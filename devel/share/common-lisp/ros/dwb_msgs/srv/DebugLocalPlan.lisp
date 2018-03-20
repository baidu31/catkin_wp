; Auto-generated. Do not edit!


(cl:in-package dwb_msgs-srv)


;//! \htmlinclude DebugLocalPlan-request.msg.html

(cl:defclass <DebugLocalPlan-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (velocity
    :reader velocity
    :initarg :velocity
    :type nav_2d_msgs-msg:Twist2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Twist2D))
   (global_plan
    :reader global_plan
    :initarg :global_plan
    :type nav_2d_msgs-msg:Path2D
    :initform (cl:make-instance 'nav_2d_msgs-msg:Path2D)))
)

(cl:defclass DebugLocalPlan-request (<DebugLocalPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugLocalPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugLocalPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<DebugLocalPlan-request> is deprecated: use dwb_msgs-srv:DebugLocalPlan-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DebugLocalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:pose-val is deprecated.  Use dwb_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <DebugLocalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:velocity-val is deprecated.  Use dwb_msgs-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <DebugLocalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:global_plan-val is deprecated.  Use dwb_msgs-srv:global_plan instead.")
  (global_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugLocalPlan-request>) ostream)
  "Serializes a message object of type '<DebugLocalPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugLocalPlan-request>) istream)
  "Deserializes a message object of type '<DebugLocalPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugLocalPlan-request>)))
  "Returns string type for a service object of type '<DebugLocalPlan-request>"
  "dwb_msgs/DebugLocalPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugLocalPlan-request)))
  "Returns string type for a service object of type 'DebugLocalPlan-request"
  "dwb_msgs/DebugLocalPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugLocalPlan-request>)))
  "Returns md5sum for a message object of type '<DebugLocalPlan-request>"
  "bff61c81c5bb8ecaed3bf8e75d77ba17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugLocalPlan-request)))
  "Returns md5sum for a message object of type 'DebugLocalPlan-request"
  "bff61c81c5bb8ecaed3bf8e75d77ba17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugLocalPlan-request>)))
  "Returns full string definition for message of type '<DebugLocalPlan-request>"
  (cl:format cl:nil "~%nav_2d_msgs/Pose2DStamped pose~%nav_2d_msgs/Twist2D velocity~%nav_2d_msgs/Path2D global_plan~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugLocalPlan-request)))
  "Returns full string definition for message of type 'DebugLocalPlan-request"
  (cl:format cl:nil "~%nav_2d_msgs/Pose2DStamped pose~%nav_2d_msgs/Twist2D velocity~%nav_2d_msgs/Path2D global_plan~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugLocalPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugLocalPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugLocalPlan-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':global_plan (global_plan msg))
))
;//! \htmlinclude DebugLocalPlan-response.msg.html

(cl:defclass <DebugLocalPlan-response> (roslisp-msg-protocol:ros-message)
  ((results
    :reader results
    :initarg :results
    :type dwb_msgs-msg:LocalPlanEvaluation
    :initform (cl:make-instance 'dwb_msgs-msg:LocalPlanEvaluation)))
)

(cl:defclass DebugLocalPlan-response (<DebugLocalPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugLocalPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugLocalPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwb_msgs-srv:<DebugLocalPlan-response> is deprecated: use dwb_msgs-srv:DebugLocalPlan-response instead.")))

(cl:ensure-generic-function 'results-val :lambda-list '(m))
(cl:defmethod results-val ((m <DebugLocalPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwb_msgs-srv:results-val is deprecated.  Use dwb_msgs-srv:results instead.")
  (results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugLocalPlan-response>) ostream)
  "Serializes a message object of type '<DebugLocalPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'results) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugLocalPlan-response>) istream)
  "Deserializes a message object of type '<DebugLocalPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'results) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugLocalPlan-response>)))
  "Returns string type for a service object of type '<DebugLocalPlan-response>"
  "dwb_msgs/DebugLocalPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugLocalPlan-response)))
  "Returns string type for a service object of type 'DebugLocalPlan-response"
  "dwb_msgs/DebugLocalPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugLocalPlan-response>)))
  "Returns md5sum for a message object of type '<DebugLocalPlan-response>"
  "bff61c81c5bb8ecaed3bf8e75d77ba17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugLocalPlan-response)))
  "Returns md5sum for a message object of type 'DebugLocalPlan-response"
  "bff61c81c5bb8ecaed3bf8e75d77ba17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugLocalPlan-response>)))
  "Returns full string definition for message of type '<DebugLocalPlan-response>"
  (cl:format cl:nil "LocalPlanEvaluation results~%~%~%================================================================================~%MSG: dwb_msgs/LocalPlanEvaluation~%# Full Scoring for running the local planner~%~%# Header, used for timestamp~%Header header~%# All the trajectories evaluated and their scores~%TrajectoryScore[] twists~%# Convenience index of the best (lowest) score in the twists array~%uint16 best_index~%# Convenience index of the worst (highest) score in the twists array. Useful for scaling.~%uint16 worst_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dwb_msgs/TrajectoryScore~%# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%# Time difference between first and last poses~%duration duration~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugLocalPlan-response)))
  "Returns full string definition for message of type 'DebugLocalPlan-response"
  (cl:format cl:nil "LocalPlanEvaluation results~%~%~%================================================================================~%MSG: dwb_msgs/LocalPlanEvaluation~%# Full Scoring for running the local planner~%~%# Header, used for timestamp~%Header header~%# All the trajectories evaluated and their scores~%TrajectoryScore[] twists~%# Convenience index of the best (lowest) score in the twists array~%uint16 best_index~%# Convenience index of the worst (highest) score in the twists array. Useful for scaling.~%uint16 worst_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dwb_msgs/TrajectoryScore~%# Complete scoring for a given twist.~%~%# The trajectory being scored~%Trajectory2D traj~%# The Scores for each of the critics employed~%CriticScore[] scores~%# Convenience member that totals the critic scores~%float32 total~%~%================================================================================~%MSG: dwb_msgs/Trajectory2D~%# For a given velocity command, the poses that the robot will go to in the allotted time.~%~%# Input Velocity~%nav_2d_msgs/Twist2D velocity~%# Time difference between first and last poses~%duration duration~%# Poses the robot will go to, given our kinematic model~%geometry_msgs/Pose2D[] poses~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: dwb_msgs/CriticScore~%# The result from one critic scoring a Twist.~%# Name of the critic~%string name~%# Score for the critic, not multiplied by the scale~%float32 raw_score~%# Scale for the critic, multiplied by the raw_score and added to the total score~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugLocalPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'results))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugLocalPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugLocalPlan-response
    (cl:cons ':results (results msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DebugLocalPlan)))
  'DebugLocalPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DebugLocalPlan)))
  'DebugLocalPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugLocalPlan)))
  "Returns string type for a service object of type '<DebugLocalPlan>"
  "dwb_msgs/DebugLocalPlan")