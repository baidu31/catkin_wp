// Generated by gencpp from file dwb_msgs/GenerateTwistsRequest.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_GENERATETWISTSREQUEST_H
#define DWB_MSGS_MESSAGE_GENERATETWISTSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_2d_msgs/Twist2D.h>

namespace dwb_msgs
{
template <class ContainerAllocator>
struct GenerateTwistsRequest_
{
  typedef GenerateTwistsRequest_<ContainerAllocator> Type;

  GenerateTwistsRequest_()
    : current_vel()  {
    }
  GenerateTwistsRequest_(const ContainerAllocator& _alloc)
    : current_vel(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_2d_msgs::Twist2D_<ContainerAllocator>  _current_vel_type;
  _current_vel_type current_vel;




  typedef boost::shared_ptr< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GenerateTwistsRequest_

typedef ::dwb_msgs::GenerateTwistsRequest_<std::allocator<void> > GenerateTwistsRequest;

typedef boost::shared_ptr< ::dwb_msgs::GenerateTwistsRequest > GenerateTwistsRequestPtr;
typedef boost::shared_ptr< ::dwb_msgs::GenerateTwistsRequest const> GenerateTwistsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dwb_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'nav_2d_msgs': ['/home/nic/catkin_wp/src/robot_navigation/nav_2d_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'dwb_msgs': ['/home/nic/catkin_wp/src/robot_navigation/dwb_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b565023e01bba3608d16ec34d67c081";
  }

  static const char* value(const ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b565023e01bba36ULL;
  static const uint64_t static_value2 = 0x08d16ec34d67c081ULL;
};

template<class ContainerAllocator>
struct DataType< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwb_msgs/GenerateTwistsRequest";
  }

  static const char* value(const ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
nav_2d_msgs/Twist2D current_vel\n\
\n\
================================================================================\n\
MSG: nav_2d_msgs/Twist2D\n\
float64 x\n\
float64 y\n\
float64 theta\n\
";
  }

  static const char* value(const ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_vel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GenerateTwistsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwb_msgs::GenerateTwistsRequest_<ContainerAllocator>& v)
  {
    s << indent << "current_vel: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::Twist2D_<ContainerAllocator> >::stream(s, indent + "  ", v.current_vel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWB_MSGS_MESSAGE_GENERATETWISTSREQUEST_H