#!/bin/bash

mariadb-install-db
service mariadb start
mariadb -uroot -e "CREATE DATABASE IF NOT EXISTS test2; CREATE USER IF NOT EXISTS rumachad@localhost IDENTIFIED BY 'inception';"
mariadbd
