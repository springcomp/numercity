#!/bin/bash

rm -f etc/nginx/.htpasswd

[[ -f "docker-entrypoint-initdb.d/numercity-mysql-dev1.sql" ]] && rm -f docker-entrypoint-initdb.d/numercity-mysql-dev1.sql

[[ -d "Dockerfiles/auth/context/" ]] && rm -rf Dockerfiles/auth/context/
[[ -d "Dockerfiles/admin/context/" ]] && rm -rf Dockerfiles/admin/context/
[[ -d "Dockerfiles/referential/context/" ]] && rm -rf Dockerfiles/referential/context/
[[ -d "Dockerfiles/request/context/" ]] && rm -rf Dockerfiles/request/context/
[[ -d "Dockerfiles/user/context/" ]] && rm -rf Dockerfiles/user/context/
[[ -d "Dockerfiles/view/context/" ]] && rm -rf Dockerfiles/view/context/
[[ -d "Dockerfiles/vote/context/" ]] && rm -rf Dockerfiles/vote/context/

[[ -d "var/lib/mysql/" ]] && rm -rf var/lib/mysql/
[[ -d "var/run/mysqld/" ]] && rm -rf var/run/mysqld/

[[ -d "var/numercity/proof/" ]] && rm -rf var/numercity/proof/
[[ -d "var/numercity/KeyPair/" ]] && rm -rf var/numercity/KeyPair/

rm -f var/logs/debug/*.log
rm -f var/logs/error/*.log

[[ -d "var/www/numercity.dev/html/" ]] && rm -rf var/www/numercity.dev/html/
[[ -d "var/www/numercity.dev/certs/" ]] && rm -rf var/www/numercity.dev/certs/

