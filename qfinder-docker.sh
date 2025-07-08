#!/bin/bash

# Define image name
IMAGE_NAME=qfinder-pro

# Build the image (only if it doesn't exist)
if ! docker image inspect "$IMAGE_NAME" > /dev/null 2>&1; then
  echo "Building Docker image for Qfinder Pro..."
  docker build -t "$IMAGE_NAME" .
fi

# Run the container with host networking (for LAN/NAS discovery)
echo "Launching Qfinder Pro..."
docker run --rm -it --network host "$IMAGE_NAME"
