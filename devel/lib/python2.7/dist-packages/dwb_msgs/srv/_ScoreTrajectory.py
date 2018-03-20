# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dwb_msgs/ScoreTrajectoryRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import nav_2d_msgs.msg
import geometry_msgs.msg
import genpy
import dwb_msgs.msg
import std_msgs.msg

class ScoreTrajectoryRequest(genpy.Message):
  _md5sum = "632a2c02608fca9a9baab1743db814ba"
  _type = "dwb_msgs/ScoreTrajectoryRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """nav_2d_msgs/Pose2DStamped pose
nav_2d_msgs/Twist2D velocity
nav_2d_msgs/Path2D global_plan
Trajectory2D traj

================================================================================
MSG: nav_2d_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

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
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Path2D
Header header
geometry_msgs/Pose2D[] poses

================================================================================
MSG: dwb_msgs/Trajectory2D
# For a given velocity command, the poses that the robot will go to in the allotted time.

# Input Velocity
nav_2d_msgs/Twist2D velocity
# Time difference between first and last poses
duration duration
# Poses the robot will go to, given our kinematic model
geometry_msgs/Pose2D[] poses
"""
  __slots__ = ['pose','velocity','global_plan','traj']
  _slot_types = ['nav_2d_msgs/Pose2DStamped','nav_2d_msgs/Twist2D','nav_2d_msgs/Path2D','dwb_msgs/Trajectory2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose,velocity,global_plan,traj

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ScoreTrajectoryRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pose is None:
        self.pose = nav_2d_msgs.msg.Pose2DStamped()
      if self.velocity is None:
        self.velocity = nav_2d_msgs.msg.Twist2D()
      if self.global_plan is None:
        self.global_plan = nav_2d_msgs.msg.Path2D()
      if self.traj is None:
        self.traj = dwb_msgs.msg.Trajectory2D()
    else:
      self.pose = nav_2d_msgs.msg.Pose2DStamped()
      self.velocity = nav_2d_msgs.msg.Twist2D()
      self.global_plan = nav_2d_msgs.msg.Path2D()
      self.traj = dwb_msgs.msg.Trajectory2D()

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
      buff.write(_struct_3I.pack(_x.pose.header.seq, _x.pose.header.stamp.secs, _x.pose.header.stamp.nsecs))
      _x = self.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_6d3I.pack(_x.pose.pose.x, _x.pose.pose.y, _x.pose.pose.theta, _x.velocity.x, _x.velocity.y, _x.velocity.theta, _x.global_plan.header.seq, _x.global_plan.header.stamp.secs, _x.global_plan.header.stamp.nsecs))
      _x = self.global_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.global_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.global_plan.poses:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
      _x = self
      buff.write(_struct_3d2i.pack(_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta, _x.traj.duration.secs, _x.traj.duration.nsecs))
      length = len(self.traj.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.traj.poses:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pose is None:
        self.pose = nav_2d_msgs.msg.Pose2DStamped()
      if self.velocity is None:
        self.velocity = nav_2d_msgs.msg.Twist2D()
      if self.global_plan is None:
        self.global_plan = nav_2d_msgs.msg.Path2D()
      if self.traj is None:
        self.traj = dwb_msgs.msg.Trajectory2D()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.pose.header.seq, _x.pose.header.stamp.secs, _x.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.pose.pose.x, _x.pose.pose.y, _x.pose.pose.theta, _x.velocity.x, _x.velocity.y, _x.velocity.theta, _x.global_plan.header.seq, _x.global_plan.header.stamp.secs, _x.global_plan.header.stamp.nsecs,) = _struct_6d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.global_plan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.global_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.global_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        self.global_plan.poses.append(val1)
      _x = self
      start = end
      end += 32
      (_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta, _x.traj.duration.secs, _x.traj.duration.nsecs,) = _struct_3d2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traj.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        self.traj.poses.append(val1)
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
      buff.write(_struct_3I.pack(_x.pose.header.seq, _x.pose.header.stamp.secs, _x.pose.header.stamp.nsecs))
      _x = self.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_6d3I.pack(_x.pose.pose.x, _x.pose.pose.y, _x.pose.pose.theta, _x.velocity.x, _x.velocity.y, _x.velocity.theta, _x.global_plan.header.seq, _x.global_plan.header.stamp.secs, _x.global_plan.header.stamp.nsecs))
      _x = self.global_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.global_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.global_plan.poses:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
      _x = self
      buff.write(_struct_3d2i.pack(_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta, _x.traj.duration.secs, _x.traj.duration.nsecs))
      length = len(self.traj.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.traj.poses:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pose is None:
        self.pose = nav_2d_msgs.msg.Pose2DStamped()
      if self.velocity is None:
        self.velocity = nav_2d_msgs.msg.Twist2D()
      if self.global_plan is None:
        self.global_plan = nav_2d_msgs.msg.Path2D()
      if self.traj is None:
        self.traj = dwb_msgs.msg.Trajectory2D()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.pose.header.seq, _x.pose.header.stamp.secs, _x.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.pose.pose.x, _x.pose.pose.y, _x.pose.pose.theta, _x.velocity.x, _x.velocity.y, _x.velocity.theta, _x.global_plan.header.seq, _x.global_plan.header.stamp.secs, _x.global_plan.header.stamp.nsecs,) = _struct_6d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.global_plan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.global_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.global_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        self.global_plan.poses.append(val1)
      _x = self
      start = end
      end += 32
      (_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta, _x.traj.duration.secs, _x.traj.duration.nsecs,) = _struct_3d2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traj.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        self.traj.poses.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_3d2i = struct.Struct("<3d2i")
_struct_6d3I = struct.Struct("<6d3I")
_struct_3d = struct.Struct("<3d")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dwb_msgs/ScoreTrajectoryResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import nav_2d_msgs.msg
import dwb_msgs.msg
import genpy

class ScoreTrajectoryResponse(genpy.Message):
  _md5sum = "9adddfb4346d8c52f57ac0e9b43132ec"
  _type = "dwb_msgs/ScoreTrajectoryResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """TrajectoryScore score


================================================================================
MSG: dwb_msgs/TrajectoryScore
# Complete scoring for a given twist.

# The trajectory being scored
Trajectory2D traj
# The Scores for each of the critics employed
CriticScore[] scores
# Convenience member that totals the critic scores
float32 total

================================================================================
MSG: dwb_msgs/Trajectory2D
# For a given velocity command, the poses that the robot will go to in the allotted time.

# Input Velocity
nav_2d_msgs/Twist2D velocity
# Time difference between first and last poses
duration duration
# Poses the robot will go to, given our kinematic model
geometry_msgs/Pose2D[] poses

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
================================================================================
MSG: dwb_msgs/CriticScore
# The result from one critic scoring a Twist.
# Name of the critic
string name
# Score for the critic, not multiplied by the scale
float32 raw_score
# Scale for the critic, multiplied by the raw_score and added to the total score
float32 scale
"""
  __slots__ = ['score']
  _slot_types = ['dwb_msgs/TrajectoryScore']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       score

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ScoreTrajectoryResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.score is None:
        self.score = dwb_msgs.msg.TrajectoryScore()
    else:
      self.score = dwb_msgs.msg.TrajectoryScore()

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
      buff.write(_struct_3d2i.pack(_x.score.traj.velocity.x, _x.score.traj.velocity.y, _x.score.traj.velocity.theta, _x.score.traj.duration.secs, _x.score.traj.duration.nsecs))
      length = len(self.score.traj.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.score.traj.poses:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
      length = len(self.score.scores)
      buff.write(_struct_I.pack(length))
      for val1 in self.score.scores:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_2f.pack(_x.raw_score, _x.scale))
      buff.write(_struct_f.pack(self.score.total))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.score is None:
        self.score = dwb_msgs.msg.TrajectoryScore()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.score.traj.velocity.x, _x.score.traj.velocity.y, _x.score.traj.velocity.theta, _x.score.traj.duration.secs, _x.score.traj.duration.nsecs,) = _struct_3d2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.score.traj.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        self.score.traj.poses.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.score.scores = []
      for i in range(0, length):
        val1 = dwb_msgs.msg.CriticScore()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.raw_score, _x.scale,) = _struct_2f.unpack(str[start:end])
        self.score.scores.append(val1)
      start = end
      end += 4
      (self.score.total,) = _struct_f.unpack(str[start:end])
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
      buff.write(_struct_3d2i.pack(_x.score.traj.velocity.x, _x.score.traj.velocity.y, _x.score.traj.velocity.theta, _x.score.traj.duration.secs, _x.score.traj.duration.nsecs))
      length = len(self.score.traj.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.score.traj.poses:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
      length = len(self.score.scores)
      buff.write(_struct_I.pack(length))
      for val1 in self.score.scores:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_2f.pack(_x.raw_score, _x.scale))
      buff.write(_struct_f.pack(self.score.total))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.score is None:
        self.score = dwb_msgs.msg.TrajectoryScore()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.score.traj.velocity.x, _x.score.traj.velocity.y, _x.score.traj.velocity.theta, _x.score.traj.duration.secs, _x.score.traj.duration.nsecs,) = _struct_3d2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.score.traj.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        self.score.traj.poses.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.score.scores = []
      for i in range(0, length):
        val1 = dwb_msgs.msg.CriticScore()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.raw_score, _x.scale,) = _struct_2f.unpack(str[start:end])
        self.score.scores.append(val1)
      start = end
      end += 4
      (self.score.total,) = _struct_f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3d2i = struct.Struct("<3d2i")
_struct_f = struct.Struct("<f")
_struct_2f = struct.Struct("<2f")
_struct_3d = struct.Struct("<3d")
class ScoreTrajectory(object):
  _type          = 'dwb_msgs/ScoreTrajectory'
  _md5sum = '75f5243197ed3b2847b6392a67646096'
  _request_class  = ScoreTrajectoryRequest
  _response_class = ScoreTrajectoryResponse
