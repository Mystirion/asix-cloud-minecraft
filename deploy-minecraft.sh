#!/bin/bash
apt update && apt upgrade -y
apt install docker.io -y
mkdir -p /home/ubuntu/minecraft-data -y
docker run -d -p 25565:25565 --name minecraft-server \
 --restart unless-stopped -e EULA=TRUE -e ENABLE_AUTOPAUSE=FALSE \
 -e ONLINE_MODE=FALSE -e MOTD="Server Dylan Allauca Achig" \
 -v /home/ubuntu/minecraft-data:/data itzg/minecraft-server -y
