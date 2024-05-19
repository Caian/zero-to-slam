# Prerequisites

- A free NVIDIA developer account for downloading Omniverse;
- An NVIDIA GPU with RTX support for using Isaac Sim;
- This guide is built on top of Ubuntu 22.04. Other distros are certainly possible, but commands may differ;
- A controller for driving the robot. I used a DualSense, other controllers will require changing the scripts.

## Performance fix for Podman's keep-id

This guide runs rootless containers and keeps the id of the user that calls the scripts (`--userns=keep-id` in podman). Sometimes this approach causes containers to stall for a while when starting. A fix for this issue is to use fuse's overlayfs to mount the container image. Here are the steps to achieve this:

1. Install `libfuse2`:

```
apt install -y libfuse2
```

2. Create the directory for Podman's configuration:

```
mkdir -p ~/.config/containers
```

3. Create a file `~/.config/containers/storage.conf` containing the following:

```
[storage]
  driver = "overlay"

[storage.options.overlay]
  mount_program = "/usr/bin/fuse-overlayfs"
```
4. Check if the configuration is valid by calling some podman command:

```
podman images
```

If there are no errors then we are good to go.
