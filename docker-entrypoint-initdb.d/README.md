## MYSQL INITIALIZATION SCRIPTS

Please, copy a MySQL Server mysqldump file in this folder to restore the database.
After this operation completes, remove the initialization line from docker-compose.yml.

To reset the database, perform the following steps:
- delete (or backup) folder '~/numercity/var/lib/mysql/'
- sudo rm -rf ~/numercity/var/lib/mysql/
- sudo mkdir ~/numercity/var/lib/mysql/
- sudo chown 999 ~/numercity/var/lib/mysql/

- copy the SQL backup to ~/numercity/docker-entrypoint-initdb.d/:
- cp ~/numercity/binaries/numercity-mysql-dev2.sql ~/numercity/docker-entrypoint-initdb.d/
- run ./02-restore-db.sh

- recreate permissions for user 'localhost'@'%' with password:


