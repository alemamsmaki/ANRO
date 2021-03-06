// Generated by gencpp from file beginner_tutorials/oint_trajectory.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_OINT_TRAJECTORY_H
#define BEGINNER_TUTORIALS_MESSAGE_OINT_TRAJECTORY_H

#include <ros/service_traits.h>


#include <beginner_tutorials/oint_trajectoryRequest.h>
#include <beginner_tutorials/oint_trajectoryResponse.h>


namespace beginner_tutorials
{

struct oint_trajectory
{

typedef oint_trajectoryRequest Request;
typedef oint_trajectoryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct oint_trajectory
} // namespace beginner_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beginner_tutorials::oint_trajectory > {
  static const char* value()
  {
    return "1b85c40201362e9a9064250d10c96489";
  }

  static const char* value(const ::beginner_tutorials::oint_trajectory&) { return value(); }
};

template<>
struct DataType< ::beginner_tutorials::oint_trajectory > {
  static const char* value()
  {
    return "beginner_tutorials/oint_trajectory";
  }

  static const char* value(const ::beginner_tutorials::oint_trajectory&) { return value(); }
};


// service_traits::MD5Sum< ::beginner_tutorials::oint_trajectoryRequest> should match 
// service_traits::MD5Sum< ::beginner_tutorials::oint_trajectory > 
template<>
struct MD5Sum< ::beginner_tutorials::oint_trajectoryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::oint_trajectory >::value();
  }
  static const char* value(const ::beginner_tutorials::oint_trajectoryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::oint_trajectoryRequest> should match 
// service_traits::DataType< ::beginner_tutorials::oint_trajectory > 
template<>
struct DataType< ::beginner_tutorials::oint_trajectoryRequest>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::oint_trajectory >::value();
  }
  static const char* value(const ::beginner_tutorials::oint_trajectoryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beginner_tutorials::oint_trajectoryResponse> should match 
// service_traits::MD5Sum< ::beginner_tutorials::oint_trajectory > 
template<>
struct MD5Sum< ::beginner_tutorials::oint_trajectoryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::oint_trajectory >::value();
  }
  static const char* value(const ::beginner_tutorials::oint_trajectoryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::oint_trajectoryResponse> should match 
// service_traits::DataType< ::beginner_tutorials::oint_trajectory > 
template<>
struct DataType< ::beginner_tutorials::oint_trajectoryResponse>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::oint_trajectory >::value();
  }
  static const char* value(const ::beginner_tutorials::oint_trajectoryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_OINT_TRAJECTORY_H
