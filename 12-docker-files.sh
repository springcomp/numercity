#!/bin/bash

## Setup docker image contexts

[[ ! -d Dockerfiles/auth/context/ ]] && mkdir Dockerfiles/auth/context/
[[ ! -d Dockerfiles/admin/context/ ]] && mkdir Dockerfiles/admin/context/
[[ ! -d Dockerfiles/user/context/ ]] && mkdir Dockerfiles/user/context/
[[ ! -d Dockerfiles/referential/context/ ]] && mkdir Dockerfiles/referential/context/
[[ ! -d Dockerfiles/request/context/ ]] && mkdir Dockerfiles/request/context/
[[ ! -d Dockerfiles/view/context/ ]] && mkdir Dockerfiles/view/context/
[[ ! -d Dockerfiles/vote/context/ ]] && mkdir Dockerfiles/vote/context/

cp binaries/auth.jar Dockerfiles/auth/context/
cp binaries/admin.jar Dockerfiles/admin/context/
cp binaries/user.jar Dockerfiles/user/context/
cp binaries/referential.jar Dockerfiles/referential/context/
cp binaries/request.jar Dockerfiles/request/context/
cp binaries/view.jar Dockerfiles/view/context/
cp binaries/vote.jar Dockerfiles/vote/context/

cp -R var/www/numercity.dev/certs/ Dockerfiles/auth/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/admin/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/request/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/referential/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/user/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/view/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/vote/context/

