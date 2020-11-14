#!/bin/bash

rm -f etc/nginx/.htpasswd

[[ -f "docker-entrypoint-initdb.d/numercity-mysql-dev1.sql" ]] && rm -f docker-entrypoint-initdb.d/numercity-mysql-dev1.sql

[[ -d "var/lib/mysql/" ]] && rm -rf var/lib/mysql/
[[ -d "var/run/mysqld/" ]] && rm -rf var/run/mysqld/

[[ -d "var/numercity/proof/" ]] && rm -rf var/numercity/proof/
[[ -d "var/numercity/KeyPair/" ]] && rm -rf var/numercity/KeyPair/

rm -f $( find var/logs/debug -maxdepth 1 -type f -name "*" ! -name "_" )
rm -f $( find var/logs/error -maxdepth 1 -type f -name "*" ! -name "_" )

[[ -d "var/www/numercity.dev/html/" ]] && rm -rf var/www/numercity.dev/html/
[[ -d "var/www/numercity.dev/certs/" ]] && rm -rf var/www/numercity.dev/certs/

