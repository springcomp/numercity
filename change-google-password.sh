#!/bin/bash

## ask password

read -s -p "Google Password: " password

stop - unzip

cd ~/numercity/ && docker-compose down --remove-orphans
cd ~/numercity/Dockerfiles/auth/context/ && unzip -d auth/ auth.jar
cd ~/numercity/Dockerfiles/auth/context/ && mv auth.jar auth.back

## change password

pip install -r ~/numercity/requirements.txt
~/numercity/update-google-password.py ~/numercity/Dockerfiles/auth/context/auth/BOOT-INF/classes/application-docker.yml "$password"

## zip - restart

cd ~/numercity/Dockerfiles/auth/context/auth/ && zip -0 -r ../auth.jar *
cd ~/numercity/Dockerfiles/auth/context/ && rm -rf auth/

docker rmi numercity-auth:latest
cd ~/numercity/Dockerfiles/auth/ && docker build -t numercity-auth --file Dockerfile ./context/

cd ~/numercity/ && docker-compose up -d

