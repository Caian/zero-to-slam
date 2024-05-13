# Saves the map generated during the run in a format that can be reused by SLAM Toolbox

if [[ "$1" == "" ]]
then
    echo "Usage: save-slam-map.sh out_map_name"
    exit 1
fi

SCRIPTS_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

$SCRIPTS_PATH/ros2-container.sh ros2 service call /slam_toolbox/serialize_map slam_toolbox/srv/SerializePoseGraph "{filename: /workspace/$1}"
