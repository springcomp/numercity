#!/bin/bash

docker run --name mysql --detach \
  -p "3306:3306" \
  --env "MYSQL_ROOT_PASSWORD=password" \
  --env "MYSQL_USER_NAME=dev" \
  --env "MYSQL_USER_PASSWORD=password" \
  --mount "type=bind,source=/home/$USER/numercity/docker-entrypoint-initdb.d,target=/docker-entrypoint-initdb.d,readonly" \
  --mount "type=bind,source=/home/$USER/numercity/etc/mysql,target=/etc/mysql,readonly" \
  --mount "type=bind,source=/home/$USER/numercity/var/lib/mysql,target=/var/lib/mysql" \
  --mount "type=bind,source=/home/$USER/numercity/var/run/mysqld,target=/var/run/mysqld" \
  --mount "type=bind,source=/usr/share/zoneinfo,target=/usr/share/zoneinfo,readonly" \
  mysql:latest

docker logs -f mysql
