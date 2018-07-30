#include "path_planning.h"
#include <path_planning/velocity.h>

using namespace std;
void path_plan::Callback(const sensor_msgs::LaserScan::ConstPtr& msg){
	if(msg){
		reverse = false;
		cout<<"gocha laserscan"<<endl;
		head = 0;
		left = 0;
		right = 0;
		path_planning::velocity _msg;
		std::vector<float> data_ranges = msg->ranges;
		cout << data_ranges.size()<<endl;
		for(int i = 0; i < data_ranges.size(); i++){
			cout << "range:  "<<data_ranges[i]<<endl;
			if(data_ranges[i] < threshold){
				switch(int(i*3/data_ranges.size())){
				case 0:
					left++;
					break;
				case 1:
					right++;
					break;
				case 2:
					left++;
					break;
				}
			}
		}
		if(left && right)	
			delta_y = 0;
		else if (left*(!right)+(!left)*right)
			delta_y =-((rand()%100)/1000+0.1)*sgn(delta_y);
		
		if(head){
			delta_x = -((rand()%100)/1000+0.1)*sgn(delta_x);
			reverse=true;
		}
			
		_msg.v_x=delta_x;
		_msg.v_y=delta_y;
		_msg.reverse=0.0;
		cout<< _msg.v_x <<endl;
		cout<< _msg.v_y <<endl;
		cout<< "reverse"<<_msg.reverse <<endl;
		reverse = false;
		path_pub.publish(_msg);
	}
}

int path_plan::sgn(float f){
	if (f>0)
		return 1;
	else if (f<0)
		return -1;
	else 
		return 0;
}
