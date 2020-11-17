#!/bin/bash
cd ~/numercity
sudo rm -f var/logs/error/*.log
sudo rm -f var/logs/debug/*.log
docker rm -f mysql
docker-compose up -d
