#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
sudo docker pull spoorthyd/simple-python-flask-app:latest

# Run the Docker image as a container
sudo docker run -d -p 5000:5000 spoorthyd/simple-python-flask-app
