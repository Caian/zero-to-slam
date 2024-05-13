# Loads a previous map in the current run

if [[ "$1" == "" ]]
then
    echo "Usage: load-map-posegraph.sh map_name"
    exit 1
fi

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 service call /slam_toolbox/deserialize_map slam_toolbox/srv/DeserializePoseGraph "{filename: /workspace/$1, match_type: 1}"
