# Converts joystick topics to /cmd_vel topics used to move the robot

# enable_button: X
# axis_linear.x (forward / backward): left thumbstick up / down
# axis_angular.yaw (turn left / right): left thumbstick left / right

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 run teleop_twist_joy teleop_node --ros-args -p enable_button:=0 -p axis_linear.x:=1 -p axis_angular.yaw:=0
