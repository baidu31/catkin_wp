# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mbf_msgs/MoveBaseResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class MoveBaseResult(genpy.Message):
  _md5sum = "88a3b817098a081f3982a20a1b915e4c"
  _type = "mbf_msgs/MoveBaseResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# Predefined success codes:
uint8 SUCCESS        = 0

# Predefined general error codes:
uint8 FAILURE        = 10
uint8 CANCELED       = 11
uint8 PAT_EXCEEDED   = 12
uint8 COLLISION      = 13
uint8 OSCILLATION    = 14
uint8 ROBOT_STUCK    = 15
uint8 START_BLOCKED  = 16
uint8 GOAL_BLOCKED   = 17
uint8 TF_ERROR       = 18
uint8 INVALID_PLUGIN = 19
uint8 INTERNAL_ERROR = 20
# 21..49 are reserved for future general error codes

# Planning/controlling failures:
uint8 PLAN_FAILURE   = 50
# 51..99 are reserved as global planner specific errors

uint8 CTRL_FAILURE   = 100
# 101..149 are reserved as local planner specific errors

uint32 outcome
string message

# Configuration upon action completion
float32 dist_to_goal
float32 angle_to_goal
geometry_msgs/PoseStamped final_pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  # Pseudo-constants
  SUCCESS = 0
  FAILURE = 10
  CANCELED = 11
  PAT_EXCEEDED = 12
  COLLISION = 13
  OSCILLATION = 14
  ROBOT_STUCK = 15
  START_BLOCKED = 16
  GOAL_BLOCKED = 17
  TF_ERROR = 18
  INVALID_PLUGIN = 19
  INTERNAL_ERROR = 20
  PLAN_FAILURE = 50
  CTRL_FAILURE = 100

  __slots__ = ['outcome','message','dist_to_goal','angle_to_goal','final_pose']
  _slot_types = ['uint32','string','float32','float32','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       outcome,message,dist_to_goal,angle_to_goal,final_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveBaseResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.outcome is None:
        self.outcome = 0
      if self.message is None:
        self.message = ''
      if self.dist_to_goal is None:
        self.dist_to_goal = 0.
      if self.angle_to_goal is None:
        self.angle_to_goal = 0.
      if self.final_pose is None:
        self.final_pose = geometry_msgs.msg.PoseStamped()
    else:
      self.outcome = 0
      self.message = ''
      self.dist_to_goal = 0.
      self.angle_to_goal = 0.
      self.final_pose = geometry_msgs.msg.PoseStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_I.pack(self.outcome))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2f3I.pack(_x.dist_to_goal, _x.angle_to_goal, _x.final_pose.header.seq, _x.final_pose.header.stamp.secs, _x.final_pose.header.stamp.nsecs))
      _x = self.final_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.final_pose.pose.position.x, _x.final_pose.pose.position.y, _x.final_pose.pose.position.z, _x.final_pose.pose.orientation.x, _x.final_pose.pose.orientation.y, _x.final_pose.pose.orientation.z, _x.final_pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.final_pose is None:
        self.final_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      start = end
      end += 4
      (self.outcome,) = _struct_I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8')
      else:
        self.message = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.dist_to_goal, _x.angle_to_goal, _x.final_pose.header.seq, _x.final_pose.header.stamp.secs, _x.final_pose.header.stamp.nsecs,) = _struct_2f3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.final_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.final_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.final_pose.pose.position.x, _x.final_pose.pose.position.y, _x.final_pose.pose.position.z, _x.final_pose.pose.orientation.x, _x.final_pose.pose.orientation.y, _x.final_pose.pose.orientation.z, _x.final_pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_I.pack(self.outcome))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2f3I.pack(_x.dist_to_goal, _x.angle_to_goal, _x.final_pose.header.seq, _x.final_pose.header.stamp.secs, _x.final_pose.header.stamp.nsecs))
      _x = self.final_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.final_pose.pose.position.x, _x.final_pose.pose.position.y, _x.final_pose.pose.position.z, _x.final_pose.pose.orientation.x, _x.final_pose.pose.orientation.y, _x.final_pose.pose.orientation.z, _x.final_pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.final_pose is None:
        self.final_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      start = end
      end += 4
      (self.outcome,) = _struct_I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8')
      else:
        self.message = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.dist_to_goal, _x.angle_to_goal, _x.final_pose.header.seq, _x.final_pose.header.stamp.secs, _x.final_pose.header.stamp.nsecs,) = _struct_2f3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.final_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.final_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.final_pose.pose.position.x, _x.final_pose.pose.position.y, _x.final_pose.pose.position.z, _x.final_pose.pose.orientation.x, _x.final_pose.pose.orientation.y, _x.final_pose.pose.orientation.z, _x.final_pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_7d = struct.Struct("<7d")
_struct_2f3I = struct.Struct("<2f3I")
