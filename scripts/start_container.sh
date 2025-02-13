#!/bin/bash
set -e

#Pull the docker image from docker hub
docker pull nityatesting/flask-app

#Run the Docker image as a container
docker run -d -p 5000:5000 nityatesting/flask-app
