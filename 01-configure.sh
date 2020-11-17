#!/bin/bash

[[ ! -d var/ ]] && mkdir var/

[[ ! -d var/lib/ ]] && mkdir var/lib/
[[ ! -d var/lib/mysql/ ]] && mkdir var/lib/mysql/

[[ ! -d var/numercity/ ]] && mkdir var/numercity/

[[ ! -d var/run/ ]] && mkdir var/run/
[[ ! -d var/run/mysqld ]] && mkdir var/run/mysqld/

[[ ! -d var/www ]] && mkdir var/www/
[[ ! -d var/www/numercity.dev ]] && mkdir var/www/numercity.dev/
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

. "${BASH_SOURCE%/*}/11-cert.sh"
. "${BASH_SOURCE%/*}/12-docker-files.sh"
. "${BASH_SOURCE%/*}/13-docker-images.sh"

