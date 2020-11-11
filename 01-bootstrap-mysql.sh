#!/bin/bash

[[ ! -d var/ ]] && mkdir var/

[[ ! -d var/lib/ ]] && mkdir var/lib/
[[ ! -d var/lib/mysql/ ]] && mkdir var/lib/mysql/

[[ ! -d var/run/ ]] && mkdir var/run/
[[ ! -d var/run/mysqld ]] && mkdir var/run/mysqld/

chmod 777 var/run/mysqld/
