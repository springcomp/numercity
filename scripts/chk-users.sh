#!/bin/sh

docker exec -it numercity_user_1 curl -H 'Host: numercity.dev' http://localhost:8082/users/membres
