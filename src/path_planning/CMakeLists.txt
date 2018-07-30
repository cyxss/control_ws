cmake_minimum_required(VERSION 2.8.3)
project(path_planning)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)
add_message_files(
  FILES
  velocity.msg
)
generate_messages(
  DEPENDENCIES
  std_msgs
)
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES path_planning
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
CATKIN_DEPENDS message_runtime
)
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(path_planning src/main.cpp src/path_planning.cpp src/path_planning.h)
target_link_libraries(path_planning ${catkin_LIBRARIES})

