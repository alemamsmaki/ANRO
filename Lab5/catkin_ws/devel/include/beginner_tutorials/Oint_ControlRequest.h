// Generated by gencpp from file beginner_tutorials/Oint_ControlRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_OINT_CONTROLREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_OINT_CONTROLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct Oint_ControlRequest_
{
  typedef Oint_ControlRequest_<ContainerAllocator> Type;

  Oint_ControlRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , time(0.0)  {
    }
  Oint_ControlRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , time(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _time_type;
  _time_type time;




  typedef boost::shared_ptr< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Oint_ControlRequest_

typedef ::beginner_tutorials::Oint_ControlRequest_<std::allocator<void> > Oint_ControlRequest;

typedef boost::shared_ptr< ::beginner_tutorials::Oint_ControlRequest > Oint_ControlRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Oint_ControlRequest const> Oint_ControlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/seba/catkin_ws/src/beginner_tutorials/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "985e11a9196aee32be700f5b9567389d";
  }

  static const char* value(const ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x985e11a9196aee32ULL;
  static const uint64_t static_value2 = 0xbe700f5b9567389dULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Oint_ControlRequest";
  }

  static const char* value(const ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
float64 roll\n\
float64 pitch\n\
float64 yaw\n\
float64 time\n\
";
  }

  static const char* value(const ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Oint_ControlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Oint_ControlRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_OINT_CONTROLREQUEST_H
