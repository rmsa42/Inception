#!/bin/bash
set -x

chown -R mysql:mysql /var/lib/mysql
mysqld_safe &
sleep 5
mysql -u root -e "
	CREATE DATABASE IF NOT EXISTS ${DB_NAME};
	CREATE USER IF NOT EXISTS ${DB_USER}@'%' IDENTIFIED BY '${DB_PASSWORD}';
	GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO ${DB_USER}@'%';
"
mysqladmin -u root shutdown
exec mysqld
