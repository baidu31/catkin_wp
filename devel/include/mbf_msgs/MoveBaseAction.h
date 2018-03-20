// Generated by gencpp from file mbf_msgs/MoveBaseAction.msg
// DO NOT EDIT!


#ifndef MBF_MSGS_MESSAGE_MOVEBASEACTION_H
#define MBF_MSGS_MESSAGE_MOVEBASEACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mbf_msgs/MoveBaseActionGoal.h>
#include <mbf_msgs/MoveBaseActionResult.h>
#include <mbf_msgs/MoveBaseActionFeedback.h>

namespace mbf_msgs
{
template <class ContainerAllocator>
struct MoveBaseAction_
{
  typedef MoveBaseAction_<ContainerAllocator> Type;

  MoveBaseAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  MoveBaseAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mbf_msgs::MoveBaseActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::mbf_msgs::MoveBaseActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::mbf_msgs::MoveBaseActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;




  typedef boost::shared_ptr< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> const> ConstPtr;

}; // struct MoveBaseAction_

typedef ::mbf_msgs::MoveBaseAction_<std::allocator<void> > MoveBaseAction;

typedef boost::shared_ptr< ::mbf_msgs::MoveBaseAction > MoveBaseActionPtr;
typedef boost::shared_ptr< ::mbf_msgs::MoveBaseAction const> MoveBaseActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mbf_msgs::MoveBaseAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbfe77d44df1e2942b5b7ce800115d67";
  }

  static const char* value(const ::mbf_msgs::MoveBaseAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdbfe77d44df1e294ULL;
  static const uint64_t static_value2 = 0x2b5b7ce800115d67ULL;
};

template<class ContainerAllocator>
struct DataType< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mbf_msgs/MoveBaseAction";
  }

  static const char* value(const ::mbf_msgs::MoveBaseAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
MoveBaseActionGoal action_goal\n\
MoveBaseActionResult action_result\n\
MoveBaseActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: mbf_msgs/MoveBaseActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
MoveBaseGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: mbf_msgs/MoveBaseGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Extension of move_base_msgs/MoveBase action, with more detailed result\n\
# and feedback and the possibility to specify lists of applicable plugins\n\
\n\
geometry_msgs/PoseStamped target_pose\n\
\n\
# Controller to use; defaults to the first one specified on \"controllers\" parameter\n\
string controller\n\
\n\
# Planner to use; defaults to the first one specified on \"planners\" parameter\n\
string planner\n\
\n\
# Recovery behaviors to try on case of failure; defaults to the \"recovery_behaviors\" parameter value\n\
string[] recovery_behaviors\n\
\n\
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
\n\
================================================================================\n\
MSG: mbf_msgs/MoveBaseActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
MoveBaseResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: mbf_msgs/MoveBaseResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
# Predefined success codes:\n\
uint8 SUCCESS        = 0\n\
\n\
# Predefined general error codes:\n\
uint8 FAILURE        = 10\n\
uint8 CANCELED       = 11\n\
uint8 PAT_EXCEEDED   = 12\n\
uint8 COLLISION      = 13\n\
uint8 OSCILLATION    = 14\n\
uint8 ROBOT_STUCK    = 15\n\
uint8 START_BLOCKED  = 16\n\
uint8 GOAL_BLOCKED   = 17\n\
uint8 TF_ERROR       = 18\n\
uint8 INVALID_PLUGIN = 19\n\
uint8 INTERNAL_ERROR = 20\n\
# 21..49 are reserved for future general error codes\n\
\n\
# Planning/controlling failures:\n\
uint8 PLAN_FAILURE   = 50\n\
# 51..99 are reserved as global planner specific errors\n\
\n\
uint8 CTRL_FAILURE   = 100\n\
# 101..149 are reserved as local planner specific errors\n\
\n\
uint32 outcome\n\
string message\n\
\n\
# Configuration upon action completion\n\
float32 dist_to_goal\n\
float32 angle_to_goal\n\
geometry_msgs/PoseStamped final_pose\n\
\n\
\n\
================================================================================\n\
MSG: mbf_msgs/MoveBaseActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
MoveBaseFeedback feedback\n\
\n\
================================================================================\n\
MSG: mbf_msgs/MoveBaseFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
float32 dist_to_goal\n\
float32 angle_to_goal\n\
geometry_msgs/PoseStamped current_pose\n\
geometry_msgs/TwistStamped current_twist\n\
\n\
================================================================================\n\
MSG: geometry_msgs/TwistStamped\n\
# A twist with reference coordinate frame and timestamp\n\
Header header\n\
Twist twist\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::mbf_msgs::MoveBaseAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveBaseAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mbf_msgs::MoveBaseAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mbf_msgs::MoveBaseAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::mbf_msgs::MoveBaseActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::mbf_msgs::MoveBaseActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::mbf_msgs::MoveBaseActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MBF_MSGS_MESSAGE_MOVEBASEACTION_H
