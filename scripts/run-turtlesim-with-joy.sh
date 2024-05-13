# The turtlesim package is an easy way to check if the /cmd_vel topic is being properly published

# -r turtle1/cmd_vel:=cmd_vel Change the topic used for moving the turtle to /cmd_vel because turtlesim has an individual /cmd_vel topic for each turtle

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 run turtlesim turtlesim_node --ros-args -r turtle1/cmd_vel:=cmd_vel
