# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mbf_msgs/GetPathGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class GetPathGoal(genpy.Message):
  _md5sum = "ba13b35f05b074f8a047d8b90cb39686"
  _type = "mbf_msgs/GetPathGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Get a path from start_pose or current position to the target pose

# Use start_pose or current position as the beginning of the path
bool use_start_pose

# The start pose for the path; optional, used if use_start_pose is true
geometry_msgs/PoseStamped start_pose

# The pose to achieve with the path
geometry_msgs/PoseStamped target_pose

# If the goal is obstructed, how many meters the planner can relax the constraint in x and y before failing
float64 tolerance

# Planner to use; defaults to the first one specified on "planners" parameter
string planner


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
  __slots__ = ['use_start_pose','start_pose','target_pose','tolerance','planner']
  _slot_types = ['bool','geometry_msgs/PoseStamped','geometry_msgs/PoseStamped','float64','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       use_start_pose,start_pose,target_pose,tolerance,planner

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetPathGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.use_start_pose is None:
        self.use_start_pose = False
      if self.start_pose is None:
        self.start_pose = geometry_msgs.msg.PoseStamped()
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.tolerance is None:
        self.tolerance = 0.
      if self.planner is None:
        self.planner = ''
    else:
      self.use_start_pose = False
      self.start_pose = geometry_msgs.msg.PoseStamped()
      self.target_pose = geometry_msgs.msg.PoseStamped()
      self.tolerance = 0.
      self.planner = ''

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
      _x = self
      buff.write(_struct_B3I.pack(_x.use_start_pose, _x.start_pose.header.seq, _x.start_pose.header.stamp.secs, _x.start_pose.header.stamp.nsecs))
      _x = self.start_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.start_pose.pose.position.x, _x.start_pose.pose.position.y, _x.start_pose.pose.position.z, _x.start_pose.pose.orientation.x, _x.start_pose.pose.orientation.y, _x.start_pose.pose.orientation.z, _x.start_pose.pose.orientation.w, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs))
      _x = self.target_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_8d.pack(_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.tolerance))
      _x = self.planner
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.start_pose is None:
        self.start_pose = geometry_msgs.msg.PoseStamped()
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.use_start_pose, _x.start_pose.header.seq, _x.start_pose.header.stamp.secs, _x.start_pose.header.stamp.nsecs,) = _struct_B3I.unpack(str[start:end])
      self.use_start_pose = bool(self.use_start_pose)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.start_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.start_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.start_pose.pose.position.x, _x.start_pose.pose.position.y, _x.start_pose.pose.position.z, _x.start_pose.pose.orientation.x, _x.start_pose.pose.orientation.y, _x.start_pose.pose.orientation.z, _x.start_pose.pose.orientation.w, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.target_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.tolerance,) = _struct_8d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planner = str[start:end].decode('utf-8')
      else:
        self.planner = str[start:end]
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
      _x = self
      buff.write(_struct_B3I.pack(_x.use_start_pose, _x.start_pose.header.seq, _x.start_pose.header.stamp.secs, _x.start_pose.header.stamp.nsecs))
      _x = self.start_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.start_pose.pose.position.x, _x.start_pose.pose.position.y, _x.start_pose.pose.position.z, _x.start_pose.pose.orientation.x, _x.start_pose.pose.orientation.y, _x.start_pose.pose.orientation.z, _x.start_pose.pose.orientation.w, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs))
      _x = self.target_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_8d.pack(_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.tolerance))
      _x = self.planner
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.start_pose is None:
        self.start_pose = geometry_msgs.msg.PoseStamped()
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.use_start_pose, _x.start_pose.header.seq, _x.start_pose.header.stamp.secs, _x.start_pose.header.stamp.nsecs,) = _struct_B3I.unpack(str[start:end])
      self.use_start_pose = bool(self.use_start_pose)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.start_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.start_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.start_pose.pose.position.x, _x.start_pose.pose.position.y, _x.start_pose.pose.position.z, _x.start_pose.pose.orientation.x, _x.start_pose.pose.orientation.y, _x.start_pose.pose.orientation.z, _x.start_pose.pose.orientation.w, _x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.target_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.tolerance,) = _struct_8d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planner = str[start:end].decode('utf-8')
      else:
        self.planner = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B3I = struct.Struct("<B3I")
_struct_8d = struct.Struct("<8d")
_struct_7d3I = struct.Struct("<7d3I")
