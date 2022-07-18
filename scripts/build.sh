# Experiment: build_local.sh
#!/bin/bash
echo Getting version info from Cog-Creators/Lavalink-Jars
URL="https://api.github.com/repos/Cog-Creators/Lavalink-Jars/releases"
TAG=$(echo $(curl $URL -s) | jq .[0].tag_name)

DOCKER_TAG="sannoob/lavalink:$(echo $TAG | tr -d '"')"

echo "Building docker image $DOCKER_TAG"
docker build -t $DOCKER_TAG .