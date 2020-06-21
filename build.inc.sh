#!/bin/bash
tag="you/yourlavalink:version"
echo "Building Docker Image for $tag"
sudo docker build -t $tag -f ./Dockerfile .
