#!/bin/bash

# Specify the container version tag. Versions available:
CONTAINER_VERSION=latest

# Launch the Splunk container based on MapR PACC
docker run -it \
  --net=host \
  mkieboom/hass-sensor-docker
