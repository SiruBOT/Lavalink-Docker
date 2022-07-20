#!/bin/bash
APPLICATIONYML="https://raw.githubusercontent.com/freyacodes/Lavalink/master/LavalinkServer/application.yml.example"
URL="https://api.github.com/repos/Cog-Creators/Lavalink-Jars/releases"

JSON=$(curl $URL -s)
LAST=$(echo $JSON | jq -c .[0])
TAG=$(echo $LAST | jq -c .tag_name)

DOWNLOADTO=$(echo $LAST | jq -c "(.assets[] | select(.name ==\"Lavalink.jar\") | .browser_download_url)")

echo "----------- Lavalink version: $TAG -----------"
wget -O Lavalink.jar $(echo $DOWNLOADTO | tr -d '"')
wget -O application.yml $APPLICATIONYML
