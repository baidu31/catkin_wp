// Generated by gencpp from file dwb_msgs/DebugLocalPlanResponse.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_DEBUGLOCALPLANRESPONSE_H
#define DWB_MSGS_MESSAGE_DEBUGLOCALPLANRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dwb_msgs/LocalPlanEvaluation.h>

namespace dwb_msgs
{
template <class ContainerAllocator>
struct DebugLocalPlanResponse_
{
  typedef DebugLocalPlanResponse_<ContainerAllocator> Type;

  DebugLocalPlanResponse_()
    : results()  {
    }
  DebugLocalPlanResponse_(const ContainerAllocator& _alloc)
    : results(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator>  _results_type;
  _results_type results;




  typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DebugLocalPlanResponse_

typedef ::dwb_msgs::DebugLocalPlanResponse_<std::allocator<void> > DebugLocalPlanResponse;

typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse > DebugLocalPlanResponsePtr;
typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse const> DebugLocalPlanResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dwb_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'nav_2d_msgs': ['/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'dwb_msgs': ['/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "87069c6073dc9968c853faf93e0e5af9";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x87069c6073dc9968ULL;
  static const uint64_t static_value2 = 0xc853faf93e0e5af9ULL;
};

template<class ContainerAllocator>
struct DataType< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwb_msgs/DebugLocalPlanResponse";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "LocalPlanEvaluation results\n\
\n\
\n\
================================================================================\n\
MSG: dwb_msgs/LocalPlanEvaluation\n\
# Full Scoring for running the local planner\n\
\n\
# Header, used for timestamp\n\
Header header\n\
# All the trajectories evaluated and their scores\n\
TrajectoryScore[] twists\n\
# Convenience index of the best (lowest) score in the twists array\n\
uint16 best_index\n\
# Convenience index of the worst (highest) score in the twists array. Useful for scaling.\n\
uint16 worst_index\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: dwb_msgs/TrajectoryScore\n\
# Complete scoring for a given twist.\n\
\n\
# The trajectory being scored\n\
Trajectory2D traj\n\
# The Scores for each of the critics employed\n\
CriticScore[] scores\n\
# Convenience member that totals the critic scores\n\
float32 total\n\
\n\
================================================================================\n\
MSG: dwb_msgs/Trajectory2D\n\
# For a given velocity command, the poses that the robot will go to in the allotted time.\n\
\n\
# Input Velocity\n\
nav_2d_msgs/Twist2D velocity\n\
# Time difference between first and last poses\n\
duration duration\n\
# Poses the robot will go to, given our kinematic model\n\
geometry_msgs/Pose2D[] poses\n\
\n\
================================================================================\n\
MSG: nav_2d_msgs/Twist2D\n\
float64 x\n\
float64 y\n\
float64 theta\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
================================================================================\n\
MSG: dwb_msgs/CriticScore\n\
# The result from one critic scoring a Twist.\n\
# Name of the critic\n\
string name\n\
# Score for the critic, not multiplied by the scale\n\
float32 raw_score\n\
# Scale for the critic, multiplied by the raw_score and added to the total score\n\
float32 scale\n\
";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.results);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DebugLocalPlanResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>& v)
  {
    s << indent << "results: ";
    s << std::endl;
    Printer< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >::stream(s, indent + "  ", v.results);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWB_MSGS_MESSAGE_DEBUGLOCALPLANRESPONSE_H
