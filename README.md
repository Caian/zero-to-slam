# zero-to-slam

Containerized ROS2 SLAM and navigation inside Omniverse Isaac Sim

## YouTube video guide

https://www.youtube.com/watch?v=DVMuRXtjkpQ

[![](https://img.youtube.com/vi/DVMuRXtjkpQ/0.jpg)](https://www.youtube.com/watch?v=DVMuRXtjkpQ)

## References

https://docs.omniverse.nvidia.com/isaacsim/latest/ros2_tutorials/index.html

https://github.com/ros-navigation/navigation2

https://github.com/SteveMacenski/slam_toolbox

https://www.youtube.com/watch?v=hMTxb8Y2cxI

https://www.youtube.com/watch?v=ZaiA3hWaRzE

## Cloning the repository

```
git clone --recursive https://github.com/Caian/zero-to-slam.git
```

## Introduction

This is a working example and guide on how to use NVIDIA Omniverse and Isaac Sim to develop mobile robotics with Nav2 and slam_toolbox.

I believe the best way to learn something new is to take something that works and hack it.

### Why Omniverse? Why Isaac Sim?

NVIDIA Omniverse is an interesting platform for building simulations (Isaac Sim being their robotics tool). It provides a lot of automation tools for generating synthetic data for AI training. The raytraced rendering is nice when collecting camera data for Computer Vision algorithms, and Omniverse also has interoperability with a lot of software.

The internet is full of excellent examples of how to use other simulators, so I decided to make a guide on this one.

### Why containers / podman?

I avoid installing new software on my personal computer. And I'm displeased in dealing with IT tasks instead of learning something new, either because I need a specific version that is not on my distro, or because something is different between my computer and the one from the person who made the tutorial that I'm trying to follow and I keep getting a mysterious error.

Another advantage of containers is conciliating multiple versions of the software without conflicts.

Containers are the closest I got to something that will (mostly) just work.

## What this example is NOT

A good example of how to structure and deploy a ROS2 project. ROS has a great system for bundling packages and configurations together, but I use none of those. I launch nodes by hand on multiple terminals because it is easier to see what is going on.

A container orchestration guide. I'm not using container volumes to store the data, I'm running everything locally, and there is no isolation of the container network.

A showcase for the latest and greatest navigation tools. I love the nav2 and slam_toolbox packages, but other great tools fit other purposes. The nice thing about ROS is the ecosystem and being able to mix and match components to improve what you have.

## Prerequisites

The visual guide provides additional details on how to install NVIDIA drivers, CUDA, Omniverse, Isaac Sim, and Podman.

[Check out the prerequisites.](doc/PREREQUISITES.md)

## Guide

[1. Pull or build the container image;](doc/PODMAN.md)

[2. Configure rqt;](doc/RQT.md)

[3. Configure the controller using jstest-gtk;](doc/CONTROLLER.md)

[4. Configure Isaac Sim to use its built-in ROS2;](doc/ISAAC.md)

[5. Import the zero-to-slam scene into Omniverse;](doc/IMPORT.md)

[6. Driving the Omniverse robot;](doc/DRIVE.md)

[7. Navigation and SLAM;](doc/NAVSLAM.md)

[8. Reusing a saved map.](doc/UPDATEMAP.md)
