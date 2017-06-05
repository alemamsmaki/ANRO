#include "ros/ros.h"
#include "beginner_tutorials/Jint_Control.h"
#include <math.h>
#include "sensor_msgs/JointState.h"

double t[3], prev_t[3];
double czas;
double init_t[]={0,0,0};
double a0[3], a1[3], a2[3], b0[3], b1[3], b2[3];
int i_typ;
ros::Publisher jint_pub;

void spline() {
	for(int i=0; i<3; i++) {
		a0[i]=prev_t[i];
		a1[i]=0;
		a2[i]=-2*(prev_t[i]-t[i])/(czas*czas);
		b0[i]=2*prev_t[i]-t[i];
		b1[i]=-4*(prev_t[i]-t[i])/(czas);
		b2[i]=2*(prev_t[i]-t[i])/(czas*czas);
	}
}

void fillmsg(sensor_msgs::JointState &msg, double pos[]) {
	msg.header.stamp=ros::Time::now();
	msg.name.push_back("joint1");
	msg.name.push_back("joint2");
	msg.name.push_back("joint3");

	msg.position.push_back(pos[0]);
	msg.position.push_back(pos[1]);
	msg.position.push_back(pos[2]);
}

void int_line(double T[3], double duration) {
	for(int i=0; i<3; i++) {
		T[i]=prev_t[i]+((t[i]-prev_t[i])/czas)*duration;
	}
}

void int_spline(double T[3], double t) {
	if(t<=czas/2) {
		for(int i=0; i<3; i++) {
			T[i]=a0[i]+a1[i]*t+a2[i]*t*t;
		}
	}
	else {
		for(int i=0; i<3; i++) {
			T[i]=b0[i]+b1[i]*t+b2[i]*t*t;
		}
	}
}

bool interpolate(beginner_tutorials::Jint_Control::Request &req, beginner_tutorials::Jint_Control::Response &res) {
	i_typ=req.typ;	
	t[0]=req.t1;
	t[1]=req.t2;
	t[2]=req.t3;
	czas=req.time;

	bool error=false;
	
	if(i_typ!=1 && i_typ!=2) {
		ROS_ERROR_STREAM("niepoprawny typ interpolacji");
		error=true;
	}

	if(t[1]<-3.915 || t[1]>0.775) {
		ROS_ERROR_STREAM("teta2 poza zakresem");
		error=true;
	}
	if(t[2]<-2.365 || t[2]>2.365) {
		ROS_ERROR_STREAM("teta3 poza zakresem");
		error=true;
	}
	if(czas<=0) {
		ROS_ERROR_STREAM("czas poza zakresem");
		error=true;
	}
	if(error) {
		res.status="Zadanno niepoprawne parametry";
		return true;
	}
	for(int i=0; i<3; i++) {
		t[i]+=init_t[i];
	}

	double begin=ros::Time::now().toSec();
	double duration=ros::Time::now().toSec()-begin;

	ros::Rate loop_rate(100);

	double intT[3];

	spline();

	while(duration<=czas) {
		if(i_typ==1) {
			int_line(intT, duration);
		}
		else {
			int_spline(intT, duration);
		}	

		sensor_msgs::JointState msg;
		fillmsg(msg, intT);
		jint_pub.publish(msg);

		loop_rate.sleep();
		duration=ros::Time::now().toSec()-begin;
	}

	for(int i=0; i<3; i++) {
		prev_t[i]=intT[i];
	}
	res.status="Zakonczono interpolacje";
	return true;
}

int main(int argc, char **argv) {

	ros::init(argc, argv, "JINT");
	ros::NodeHandle n;
	ros::ServiceServer service=n.advertiseService("Jint_Control", interpolate);
	jint_pub=n.advertise<sensor_msgs::JointState>("joint_states", 1);
	
	ros::Rate loop_rate(100);
	
	for(int i=0; i<3; i++) {
		prev_t[i]=0;
	}
	
	ROS_INFO("Ready to interpolate");

	while(ros::ok()) {
		sensor_msgs::JointState msg;
		fillmsg(msg, prev_t);
		jint_pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}
