#!/bin/sh

# Directory containing the images
IMAGE_DIR="/home/immolo/Pictures"

while true; do
	for IMAGE in "$IMAGE_DIR"/*.{jpg,png}; do
		gsettings set org.mate.background picture-filename "$IMAGE"
		sleep 60
	done
done
