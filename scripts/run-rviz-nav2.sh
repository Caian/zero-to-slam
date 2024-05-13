# Visualizes the robot and the process of constructing the map

# use_sim_time:=True is necessary in simulation environments like Isaac Sim
# nav2_default_view.rviz is a default profile created with usefull nav2 information

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 run rviz2 rviz2 use_sim_time:=True -d /opt/ros/humble/share/nav2_bringup/rviz/nav2_default_view.rviz
