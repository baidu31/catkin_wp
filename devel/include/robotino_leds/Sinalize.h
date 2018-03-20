// Generated by gencpp from file robotino_leds/Sinalize.msg
// DO NOT EDIT!


#ifndef ROBOTINO_LEDS_MESSAGE_SINALIZE_H
#define ROBOTINO_LEDS_MESSAGE_SINALIZE_H

#include <ros/service_traits.h>


#include <robotino_leds/SinalizeRequest.h>
#include <robotino_leds/SinalizeResponse.h>


namespace robotino_leds
{

struct Sinalize
{

typedef SinalizeRequest Request;
typedef SinalizeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Sinalize
} // namespace robotino_leds


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotino_leds::Sinalize > {
  static const char* value()
  {
    return "ac57edbc4e7f07bb4edc9b37940b5f41";
  }

  static const char* value(const ::robotino_leds::Sinalize&) { return value(); }
};

template<>
struct DataType< ::robotino_leds::Sinalize > {
  static const char* value()
  {
    return "robotino_leds/Sinalize";
  }

  static const char* value(const ::robotino_leds::Sinalize&) { return value(); }
};


// service_traits::MD5Sum< ::robotino_leds::SinalizeRequest> should match 
// service_traits::MD5Sum< ::robotino_leds::Sinalize > 
template<>
struct MD5Sum< ::robotino_leds::SinalizeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotino_leds::Sinalize >::value();
  }
  static const char* value(const ::robotino_leds::SinalizeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotino_leds::SinalizeRequest> should match 
// service_traits::DataType< ::robotino_leds::Sinalize > 
template<>
struct DataType< ::robotino_leds::SinalizeRequest>
{
  static const char* value()
  {
    return DataType< ::robotino_leds::Sinalize >::value();
  }
  static const char* value(const ::robotino_leds::SinalizeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotino_leds::SinalizeResponse> should match 
// service_traits::MD5Sum< ::robotino_leds::Sinalize > 
template<>
struct MD5Sum< ::robotino_leds::SinalizeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotino_leds::Sinalize >::value();
  }
  static const char* value(const ::robotino_leds::SinalizeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotino_leds::SinalizeResponse> should match 
// service_traits::DataType< ::robotino_leds::Sinalize > 
template<>
struct DataType< ::robotino_leds::SinalizeResponse>
{
  static const char* value()
  {
    return DataType< ::robotino_leds::Sinalize >::value();
  }
  static const char* value(const ::robotino_leds::SinalizeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTINO_LEDS_MESSAGE_SINALIZE_H
