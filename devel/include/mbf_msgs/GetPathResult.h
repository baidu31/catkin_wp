// Generated by gencpp from file mbf_msgs/GetPathResult.msg
// DO NOT EDIT!


#ifndef MBF_MSGS_MESSAGE_GETPATHRESULT_H
#define MBF_MSGS_MESSAGE_GETPATHRESULT_H


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
struct GetPathResult_
{
  typedef GetPathResult_<ContainerAllocator> Type;

  GetPathResult_()
    : outcome(0)
    , message()
    , path()
    , cost(0.0)  {
    }
  GetPathResult_(const ContainerAllocator& _alloc)
    : outcome(0)
    , message(_alloc)
    , path(_alloc)
    , cost(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _outcome_type;
  _outcome_type outcome;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
  _path_type path;

   typedef double _cost_type;
  _cost_type cost;


    enum { SUCCESS = 0u };
     enum { FAILURE = 50u };
     enum { CANCELED = 51u };
     enum { INVALID_START = 52u };
     enum { INVALID_GOAL = 53u };
     enum { NO_PATH_FOUND = 54u };
     enum { PAT_EXCEEDED = 55u };
     enum { EMPTY_PATH = 56u };
     enum { TF_ERROR = 57u };
     enum { NOT_INITIALIZED = 58u };
     enum { INVALID_PLUGIN = 59u };
     enum { INTERNAL_ERROR = 60u };
     enum { STOPPED = 61u };
 

  typedef boost::shared_ptr< ::mbf_msgs::GetPathResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mbf_msgs::GetPathResult_<ContainerAllocator> const> ConstPtr;

}; // struct GetPathResult_

typedef ::mbf_msgs::GetPathResult_<std::allocator<void> > GetPathResult;

typedef boost::shared_ptr< ::mbf_msgs::GetPathResult > GetPathResultPtr;
typedef boost::shared_ptr< ::mbf_msgs::GetPathResult const> GetPathResultConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mbf_msgs::GetPathResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mbf_msgs::GetPathResult_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mbf_msgs::GetPathResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mbf_msgs::GetPathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mbf_msgs::GetPathResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b12688ec2d204ae8838b4b6e8fe00da5";
  }

  static const char* value(const ::mbf_msgs::GetPathResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb12688ec2d204ae8ULL;
  static const uint64_t static_value2 = 0x838b4b6e8fe00da5ULL;
};

template<class ContainerAllocator>
struct DataType< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mbf_msgs/GetPathResult";
  }

  static const char* value(const ::mbf_msgs::GetPathResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
# Predefined success codes:\n\
uint8 SUCCESS         = 0\n\
# 1..9 are reserved as plugin specific non-error results\n\
\n\
# Possible error codes:\n\
uint8 FAILURE         = 50  # Unspecified failure, only used for old, non-mfb_core based plugins\n\
uint8 CANCELED        = 51  # The action has been canceled by a action client\n\
uint8 INVALID_START   = 52  #\n\
uint8 INVALID_GOAL    = 53\n\
uint8 NO_PATH_FOUND   = 54\n\
uint8 PAT_EXCEEDED    = 55\n\
uint8 EMPTY_PATH      = 56\n\
uint8 TF_ERROR        = 57\n\
uint8 NOT_INITIALIZED = 58\n\
uint8 INVALID_PLUGIN  = 59\n\
uint8 INTERNAL_ERROR  = 60\n\
uint8 STOPPED         = 61  # The planner execution has been stopped rigorously, e.g. Move Base Flex has been shut down.\n\
# 71..99 are reserved as plugin specific errors\n\
\n\
uint32 outcome\n\
string message\n\
\n\
nav_msgs/Path path\n\
\n\
float64 cost\n\
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

  static const char* value(const ::mbf_msgs::GetPathResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.outcome);
      stream.next(m.message);
      stream.next(m.path);
      stream.next(m.cost);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPathResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mbf_msgs::GetPathResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mbf_msgs::GetPathResult_<ContainerAllocator>& v)
  {
    s << indent << "outcome: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.outcome);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
    s << indent << "cost: ";
    Printer<double>::stream(s, indent + "  ", v.cost);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MBF_MSGS_MESSAGE_GETPATHRESULT_H
