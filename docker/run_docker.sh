#!/bin/bash

# Allow Docker to access X11
xhost +local:docker

# Run DL Streamer container with display and volume mounts
docker run -it --rm \
  --device /dev/dri:/dev/dri \
  --network host \
  -e DISPLAY=$DISPLAY \
  -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --volume /home/vasuja/intel/dlstreamer_data:/data \
  --volume /home/vasuja/intel/dlstreamer_models:/models \
  dlstreamer:ubuntu24