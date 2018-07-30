#include "ky_control.h"
int main(int argc, char ** argv){
	ros::init(argc, argv, "keyboard_control");
	ros::NodeHandle n;
	communication kb_control_com(n);
	kb_control_com.run();
	
	return 0;
}
