# Runs the package that processes the robot's inputs to generate a map while it runs

# use_sim_time:=True is necessary in simulation environments like Isaac Sim

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 launch slam_toolbox online_async_launch.py use_sim_time:=True
