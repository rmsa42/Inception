#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html
chmod -R 777 /var/www/html
su www-data -s /bin/bash -c "
	cd /var/www/html
	wp core download
	wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST}
	wp core install --url=test.com --title=Hello --admin_user=adminTest --admin_password=inception --admin_email=test@example.com
"
exec php-fpm7.4 -F
