#!/bin/bash

[[ ! -d var/ ]] && mkdir var/

[[ ! -d var/lib/ ]] && mkdir var/lib/
[[ ! -d var/lib/mysql/ ]] && mkdir var/lib/mysql/

[[ ! -d var/numercity/ ]] && mkdir var/numercity/

[[ ! -d var/run/ ]] && mkdir var/run/
[[ ! -d var/run/mysqld ]] && mkdir var/run/mysqld/

[[ ! -d var/www/numercity.dev/html/ ]] && mkdir var/www/numercity.dev/html/
[[ ! -d var/www/numercity.dev/certs/ ]] && mkdir var/www/numercity.dev/certs/

chmod 777 var/run/mysqld/

## MySQL Server backup
cp binaries/numercity-mysql-dev1.sql docker-entrypoint-initdb.d/

## NumerCity front-end application
unzip -u -d var/www/numercity.dev/html/ binaries/dev.numercity.fr.zip

## Authentication KeyPair/ folder
cp -r binaries/KeyPair var/numercity/KeyPair

## User proof/ folder
cp -r binaries/proof var/numercity/proof

## Create SSL certificates for localhost

openssl req -x509  -sha256 -nodes -newkey rsa:2048 \
	-days 720 \
	-keyout var/www/numercity.dev/certs/numercity.dev.key \
	-out var/www/numercity.dev/certs/numercity.dev.crt \
	-subj '/C=FR/O=NumerCity/CN=numercity.dev/emailAddress=contact@numercity.fr/' \
	-addext 'subjectAltName=DNS.1:numercity.dev,DNS.2:localhost,DNS.3:127.0.0.1' \
	-addext 'keyUsage=digitalSignature,keyCertSign,cRLSign' \
	-addext 'extendedKeyUsage=clientAuth,serverAuth'

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

cp -R var/www/numercity.dev/certs/ Dockerfiles/admin/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/request/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/referential/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/user/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/view/context/
cp -R var/www/numercity.dev/certs/ Dockerfiles/vote/context/

## Build docker images

cd "${BASH_SOURCE%/*}/Dockerfiles" && ./make-docker-images.sh && cd ..

