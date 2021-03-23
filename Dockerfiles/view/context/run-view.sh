#!/bin/sh
sleep 1m
java -jar -Dspring.profiles.active=docker /opt/numercity/view.jar
