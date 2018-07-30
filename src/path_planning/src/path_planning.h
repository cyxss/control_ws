#pragma once
#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <sensor_msgs/LaserScan.h>
#include <tf/tfMessage.h>
#include <iostream>
#include<cstdlib>
#include <path_planning/velocity.h>
#include <iostream>
using namespace std;

class path_plan{
private:
		ros::Publisher path_pub;
		ros::Subscriber scan_sub;
		void Callback(const sensor_msgs::LaserScan::ConstPtr& msg);
		float delta_x;
		float delta_y;
		float threshold=0.3;
		int head,left,right;
		//bool reverse=false;
		float reverse=0;
public:
		path_plan(ros::NodeHandle & n){
			delta_x = (rand()%100)/1000.0+0.1;
			delta_y = (rand()%400)/1000.0-0.2;
			cout<< delta_x <<endl;
			cout<< delta_y <<endl;
			path_pub = n.advertise<path_planning::velocity>("path_planning",1000, this);
			scan_sub = n.subscribe("scan",1000,&path_plan::Callback,this);
		}
		int sgn(float f);
};


