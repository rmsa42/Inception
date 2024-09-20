#!/bin/bash

chown -R mysql:mysql /var/lib/mysql
if [ ! "$(ls -A /var/lib/mysql)" ]; then
	mariadb-install-db
fi
mysqld_safe & sleep 1
mysql -u root -e "
	CREATE DATABASE IF NOT EXISTS ${DB_NAME};
	CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '$(head -n 1 ${DB_PASSWORD})';
	GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
"
mysqladmin -u root shutdown
exec mysqld
