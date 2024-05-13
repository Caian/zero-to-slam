# Publishes events read from game controllers as ROS /joy topics

if [[ "$1" == "" ]]
then
    echo "Usage: run-joy-node.sh joystick_number"
    exit 1
fi

DEVICE_NAME=/dev/input/js$1

if ! [[ -c $DEVICE_NAME ]]
then
    echo "Error: Joystick $DEVICE_NAME does not exist!"
    exit 2
fi

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 run joy joy_node --ros-args -p dev:=$DEVICE_NAME
