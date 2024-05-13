# Runs a command inside the ROS2 container

IMAGE=zero-to-slam-image:latest
DOCKER_IMAGE=docker.io/bcaian/zero-to-slam:latest

if podman image exists $DOCKER_IMAGE
then
    >&2 echo "Using docker registry image!"
    IMAGE=$DOCKER_IMAGE
fi

podman run --rm -ti \
    --userns=keep-id \
    --network host \
    --ipc host \
    -e HOME=/workspace \
    -e DISPLAY \
    --volume $PWD:/workspace:z \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:z \
    --device /dev/dri \
    --device /dev/input \
    --security-opt=label=type:container_runtime_t \
    $IMAGE \
    "$@"
