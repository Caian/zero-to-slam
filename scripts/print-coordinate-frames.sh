# Print the relations between coordinate frames (/tf) that used to calculate relative positions and orientations

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 run tf2_tools view_frames
