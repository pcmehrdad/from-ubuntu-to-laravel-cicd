#!/bin/sh
set -e
# docker rm $(docker stop $(docker ps -a -q --filter="name=phpmyadmin" --format="{{.ID}}"))
# docker pull phpmyadmin/phpmyadmin:latest
docker run --name phpmyadmin --restart=always -d -p 9998:80 -e PMA_HOST=host.docker.internal -e MYSQL_USERNAME=sail -e MYSQL_ROOT_PASSWORD=password phpmyadmin