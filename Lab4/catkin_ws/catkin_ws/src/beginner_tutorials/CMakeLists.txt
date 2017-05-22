cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorials)

find_package(catkin REQUIRED COMPONENTS sensor_msgs tf urdf kdl_parser roscpp rospy std_msgs genmsg)

add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv Jint_Control.srv Oint_Control.srv)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(
	INCLUDE_DIRS include
	LIBRARIES beginner_tutorials
	CATKIN_DEPENDS message_runtime roscpp std_msgs)

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
add_dependencies(talker beginner_tutorials_generate_messages_cpp)

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})
add_dependencies(listener beginner_tutorials_generate_messages_cpp)

add_executable(add_two_ints_server src/add_two_ints_server.cpp)
target_link_libraries(add_two_ints_server ${catkin_LIBRARIES})
add_dependencies(add_two_ints_server beginner_tutorials_generate_messages_cpp)

add_executable(add_two_ints_client src/add_two_ints_client.cpp)
target_link_libraries(add_two_ints_client ${catkin_LIBRARIES})
add_dependencies(add_two_ints_client beginner_tutorials_generate_messages_cpp)

add_executable(turtle src/turtle.cpp)
target_link_libraries(turtle ${catkin_LIBRARIES})
add_dependencies(turtle beginner_tutorials_generate_messages_cpp)

add_executable(DKIN src/DKIN.cpp)
target_link_libraries(DKIN ${catkin_LIBRARIES})
add_dependencies(DKIN beginner_tutorials_generate_messages_cpp)

add_executable(KDLDKIN src/KDLDKIN.cpp)
target_link_libraries(KDLDKIN ${catkin_LIBRARIES})
add_dependencies(KDLDKIN beginner_tutorials_generate_messages_cpp)

add_executable(JCMD src/JCMD.cpp)
target_link_libraries(JCMD ${catkin_LIBRARIES})
add_dependencies(JCMD beginner_tutorials_generate_messages_cpp)

add_executable(JINT src/JINT.cpp)
target_link_libraries(JINT ${catkin_LIBRARIES})
add_dependencies(JINT beginner_tutorials_generate_messages_cpp)

add_executable(OCMD src/OCMD.cpp)
target_link_libraries(OCMD ${catkin_LIBRARIES})
add_dependencies(OCMD beginner_tutorials_generate_messages_cpp)

add_executable(OINT src/OINT.cpp)
target_link_libraries(OINT ${catkin_LIBRARIES})
add_dependencies(OINT beginner_tutorials_generate_messages_cpp)


