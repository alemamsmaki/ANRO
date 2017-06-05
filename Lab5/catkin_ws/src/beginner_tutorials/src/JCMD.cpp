#include "ros/ros.h"
#include "beginner_tutorials/Jint_Control.h"
#include <cstdlib>

int main(int argc, char **argv) {
	ros::init(argc, argv, "JCMD");
  
	if (argc != 6) {
		ROS_INFO("uzycie: JCMD 1-lin lub 2-spline teta1 teta2 teta3 czas");
		return 1;
	}

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<beginner_tutorials::Jint_Control>("Jint_Control");

	beginner_tutorials::Jint_Control srv;

	srv.request.typ = atof(argv[1]);
	srv.request.t1 = atof(argv[2]);
	srv.request.t2 = atof(argv[3]);
	srv.request.t3 = atof(argv[4]);
	srv.request.time = atof(argv[5]);
	
	if (client.call(srv)) {
		ROS_INFO_STREAM(srv.response.status);
	}
	else {
	ROS_ERROR("Failed to call service");
	return 1;
	}

	return 0;
}
