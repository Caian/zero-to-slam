# Pull or build the container image

**Note: Building the image is optional, keep reading for instructions on how to pull a pre-built one.**

The repository contains a Containerfile that can be used to build the image locally:

```
cd zero-to-slam/
cd container-image/
./build-container-image.sh
```

You should see the image available using the command `podman images`:

```
REPOSITORY                    TAG                        IMAGE ID      CREATED      SIZE
localhost/zero-to-slam-image  latest                     983c10fb2c41  14 seconds ago ago  4.37 GB
docker.io/osrf/ros            humble-desktop-full-jammy  26438fe1f0c9  24 hours ago ago  3.93 GB
```

Instead of building the container yourself, I made it available on dockerhub:

```
podman pull docker.io/bcaian/zero-to-slam
```

The scripts will always prefer the docker version when available.

Test the container by querying the ROS environment variables inside it:

```
cd zero-to-slam/
./scripts/ros2-container.sh env | grep ROS
```

You should see the following:

```
ROS_VERSION=2
ROS_PYTHON_VERSION=3
ROS_LOCALHOST_ONLY=0
ROS_DISTRO=humble
```

But if you run the same command without the container:

```
env | grep ROS
```

The result should be empty because ROS2 is not installed on the host machine, instead it exists only inside the container (unless you have installed it in your system before this guide).

**Note: One important caveat is that only the current directory is available inside the container, under the alias `/workspace`. Keep this in mind when passing paths to files and folders. Always use relative paths, and they must never exit the current folder.**
