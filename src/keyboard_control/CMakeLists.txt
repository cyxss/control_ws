cmake_minimum_required(VERSION 2.8.3)
project(keyboard_control)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
)

catkin_package()

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(main src/main.cpp src/ky_control.cpp src/ky_control.h)
target_link_libraries(main ${catkin_LIBRARIES})
