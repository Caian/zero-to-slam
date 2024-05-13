# Saves the map generated during the run as a PGM image

if [[ "$1" == "" ]]
then
    echo "Usage: save-slam-map.sh out_map_name"
    exit 1
fi

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 run nav2_map_server map_saver_cli -f /workspace/$1
