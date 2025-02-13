#!/bin/bash
set -e

#Stop the running container
container_id = docker ps | awk -F " " '{print $1}'

docker rm -f $container_id
echo "container ID has been deleted"
