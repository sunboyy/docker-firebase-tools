#!/bin/bash

# Build Docker image
docker build -t firebase-tools .

# Derive Firebase CLI version
export FIREBASE_VERSION=$(docker run --rm -it firebase-tools firebase --version | tr -d '\r')

# Tag Docker image for release
export DOCKER_TAG=ghcr.io/sunboyy/firebase-tools:$FIREBASE_VERSION
docker tag firebase-tools $DOCKER_TAG

# Delete temporary Docker image
docker rmi firebase-tools

echo
echo Successfully built $DOCKER_TAG
echo Run \`docker push $DOCKER_TAG\` to release
