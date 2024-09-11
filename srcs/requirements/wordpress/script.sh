#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli

cd /var/www/html
chmod -R 777 /var/www/html
su www-data -s /bin/bash -c "
	cd /var/www/html
	wp-cli core download
"
exec php-fpm7.4 -F
