#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t benbuc/node-frontend:18.11 .

docker build -t benbuc/node-frontend:latest .

docker push benbuc/node-frontend:18.11

docker push benbuc/node-frontend:latest
