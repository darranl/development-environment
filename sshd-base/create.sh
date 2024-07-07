#! /bin/bash

# Create the container from the previously built image.
podman create \
        -p 3333:22 \
        --mount=type=bind,source=/home/$USER/.ssh/authorized_keys,target=/home/developer/.ssh/authorized_keys,ro=true,idmap,Z \
        ghcr.io/darranl/sshd-base:latest
