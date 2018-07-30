#include "path_planning.h"

int main(int argc, char ** argv){
	ros::init(argc, argv, "path_planning");
	ros::NodeHandle n;
	path_plan pp(n);
	ros::spin();
	return 0;
}
