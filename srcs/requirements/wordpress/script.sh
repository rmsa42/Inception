#!/bin/bash
set -x

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html
chown -R www-data:www-data /var/www
su www-data -s /bin/bash -c "
wp core download
if [ ! -f "./wp-config.php" ]; then
	wp config create \
		--dbname=${DB_NAME} \
		--dbuser=${DB_USER} \
		--dbpass=$(head -n 1 ${DB_PASSWORD}) \
		--dbhost=${DB_HOST}
	wp core install --url=${WP_URL} \
		--title='${WP_TITLE}' \
		--admin_user=${WP_ADMIN_USER} \
		--admin_password=$(head -n 1 ${WP_ADMIN_PASS}) \
		--admin_email=${WP_ADMIN_EMAIL}
	wp user create \
		UserTest \
		UserTest@example.com \
		--role=contributor \
		--user_pass=test
fi
"
exec php-fpm7.4 -F
