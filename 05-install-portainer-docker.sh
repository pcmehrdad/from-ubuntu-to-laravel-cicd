#!/bin/sh
set -e
docker rm $(docker stop $(docker ps -a -q --filter="name=portainer" --format="{{.ID}}"))
docker pull portainer/portainer-ce:latest
docker run -d -p 9999:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce