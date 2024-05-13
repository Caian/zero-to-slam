# Runs the package that takes care of the navigation and route planning

# use_sim_time:=True is necessary in simulation environments like Isaac Sim
# rolling_window:=True allows the map area to grow when the robot exits the current map area
# width:=10/height:=10 the amount of the map that grows when the robot exits the current map area

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 launch nav2_bringup navigation_launch.py use_sim_time:=True rolling_window:=True width:=10 height:=10
