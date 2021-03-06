// Generated by gencpp from file mbf_msgs/ExePathGoal.msg
// DO NOT EDIT!


#ifndef MBF_MSGS_MESSAGE_EXEPATHGOAL_H
#define MBF_MSGS_MESSAGE_EXEPATHGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace mbf_msgs
{
template <class ContainerAllocator>
struct ExePathGoal_
{
  typedef ExePathGoal_<ContainerAllocator> Type;

  ExePathGoal_()
    : path()
    , controller()  {
    }
  ExePathGoal_(const ContainerAllocator& _alloc)
    : path(_alloc)
    , controller(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
  _path_type path;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _controller_type;
  _controller_type controller;




  typedef boost::shared_ptr< ::mbf_msgs::ExePathGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mbf_msgs::ExePathGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ExePathGoal_

typedef ::mbf_msgs::ExePathGoal_<std::allocator<void> > ExePathGoal;

typedef boost::shared_ptr< ::mbf_msgs::ExePathGoal > ExePathGoalPtr;
typedef boost::shared_ptr< ::mbf_msgs::ExePathGoal const> ExePathGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mbf_msgs::ExePathGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mbf_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'mbf_msgs': ['/home/nic/catkin_wp/devel/share/mbf_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mbf_msgs::ExePathGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mbf_msgs::ExePathGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mbf_msgs::ExePathGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "204acf50b87b6e3d7b7a2cad43ab5688";
  }

  static const char* value(const ::mbf_msgs::ExePathGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x204acf50b87b6e3dULL;
  static const uint64_t static_value2 = 0x7b7a2cad43ab5688ULL;
};

template<class ContainerAllocator>
struct DataType< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mbf_msgs/ExePathGoal";
  }

  static const char* value(const ::mbf_msgs::ExePathGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Follow the given path until completion or failure\n\
\n\
nav_msgs/Path path\n\
\n\
# Controller to use; defaults to the first one specified on \"controllers\" parameter\n\
string controller\n\
\n\
\n\
================================================================================\n\
MSG: nav_msgs/Path\n\
#An array of poses that represents a Path for a robot to follow\n\
Header header\n\
geometry_msgs/PoseStamped[] poses\n\
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
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::mbf_msgs::ExePathGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
      stream.next(m.controller);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExePathGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mbf_msgs::ExePathGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mbf_msgs::ExePathGoal_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
    s << indent << "controller: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.controller);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MBF_MSGS_MESSAGE_EXEPATHGOAL_H
