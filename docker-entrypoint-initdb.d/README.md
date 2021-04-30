## MYSQL INITIALIZATION SCRIPTS

Please, copy a MySQL Server mysqldump file in this folder to restore the database.
After this operation completes, remove the initialization line from docker-compose.yml.

To reset the database, perform the following steps:
+ delete (or backup) folder '~/numercity/var/lib/mysql/'
- sudo rm -rf ~/numercity/var/lib/mysql/
- sudo mkdir ~/numercity/var/lib/mysql/
- sudo chown 999 ~/numercity/var/lib/mysql/

+ delete folder '~/numercity/var/run/mysqld/'
- sudo rm -rf ~/numercity/var/run/mysqld/
- sudo mkdir ~/numercity/var/run/mysqld/
- sudo chmod 777 ~/numercity/var/run/mysqld/

+ copy the SQL backup to ~/numercity/docker-entrypoint-initdb.d/:
- cp ~/numercity/binaries/numercity-mysql-dev2.sql ~/numercity/docker-entrypoint-initdb.d/

+ restore the database
- run ./02-restore-db.sh

+ recreate permissions for user 'localhost'@'%' with password:
- mysql --protocol tcp -h localhost -P 3306 --user dev --password
- DELETE FROM mysql.user WHERE user = 'maxime';
- DELETE FROM mysql.user WHERE user = 'dev' AND host LIKE '192%';


