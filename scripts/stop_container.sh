#!/bin/bash
set -e

# Get the container ID of the running container
containerid=$(sudo docker ps -q --filter "name=dreamy_darwin")

# Check if a container ID was found
if [ -z "$containerid" ]; then
  echo "No running container found with the name 'dreamy_darwin'."
else
  # Stop the container if it's running
  echo "Stopping container with ID: $containerid"
  sudo docker stop "$containerid"
fi

