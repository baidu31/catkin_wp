// Generated by gencpp from file dwb_msgs/DebugLocalPlan.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_DEBUGLOCALPLAN_H
#define DWB_MSGS_MESSAGE_DEBUGLOCALPLAN_H

#include <ros/service_traits.h>


#include <dwb_msgs/DebugLocalPlanRequest.h>
#include <dwb_msgs/DebugLocalPlanResponse.h>


namespace dwb_msgs
{

struct DebugLocalPlan
{

typedef DebugLocalPlanRequest Request;
typedef DebugLocalPlanResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DebugLocalPlan
} // namespace dwb_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dwb_msgs::DebugLocalPlan > {
  static const char* value()
  {
    return "bff61c81c5bb8ecaed3bf8e75d77ba17";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlan&) { return value(); }
};

template<>
struct DataType< ::dwb_msgs::DebugLocalPlan > {
  static const char* value()
  {
    return "dwb_msgs/DebugLocalPlan";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlan&) { return value(); }
};


// service_traits::MD5Sum< ::dwb_msgs::DebugLocalPlanRequest> should match 
// service_traits::MD5Sum< ::dwb_msgs::DebugLocalPlan > 
template<>
struct MD5Sum< ::dwb_msgs::DebugLocalPlanRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dwb_msgs::DebugLocalPlan >::value();
  }
  static const char* value(const ::dwb_msgs::DebugLocalPlanRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dwb_msgs::DebugLocalPlanRequest> should match 
// service_traits::DataType< ::dwb_msgs::DebugLocalPlan > 
template<>
struct DataType< ::dwb_msgs::DebugLocalPlanRequest>
{
  static const char* value()
  {
    return DataType< ::dwb_msgs::DebugLocalPlan >::value();
  }
  static const char* value(const ::dwb_msgs::DebugLocalPlanRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dwb_msgs::DebugLocalPlanResponse> should match 
// service_traits::MD5Sum< ::dwb_msgs::DebugLocalPlan > 
template<>
struct MD5Sum< ::dwb_msgs::DebugLocalPlanResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dwb_msgs::DebugLocalPlan >::value();
  }
  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dwb_msgs::DebugLocalPlanResponse> should match 
// service_traits::DataType< ::dwb_msgs::DebugLocalPlan > 
template<>
struct DataType< ::dwb_msgs::DebugLocalPlanResponse>
{
  static const char* value()
  {
    return DataType< ::dwb_msgs::DebugLocalPlan >::value();
  }
  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DWB_MSGS_MESSAGE_DEBUGLOCALPLAN_H