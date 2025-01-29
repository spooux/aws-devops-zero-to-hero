#!/bin/bash
set -e

echo "Running AfterInstall Phase"

# Stop any running containers
echo "Stopping any running containers"
containerid=$(sudo docker ps -q --filter "name=myapp")
if [ -n "$containerid" ]; then
  sudo docker stop "$containerid"
  sudo docker rm "$containerid"
else
  echo "No running container found"
fi

# Pull the latest Docker image
echo "Pulling the latest Docker image"
sudo docker pull myapp:latest

# Optionally, run migrations or setup steps
# Example: sudo docker exec myapp-container-name python manage.py migrate

# Start the container again
echo "Starting the new container"
sudo docker run -d --name myapp -p 80:80 myapp:latest

echo "AfterInstall Phase Completed"
