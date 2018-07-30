#pragma once
#include <ros/ros.h>
#include "../include/mavlink/v1.0/common/mavlink.h"
#include <std_msgs/Int32.h>
#include <tf/tfMessage.h>
#include <iostream>


class communication{
private:
		ros::Publisher keyboard_control_pub;
		ros::Subscriber keyboard_control_sub;
		void Callback(const std_msgs::Int32::ConstPtr& msg);
		bool is_offboard=false;
		
public:
		communication(ros::NodeHandle & n){
			keyboard_control_pub = n.advertise<std_msgs::Int32>("keyboard_control_msg",1000);
			keyboard_control_sub = n.subscribe("offboard_mode_msg",1000,&communication::Callback,this);
		}
		void run();

};
