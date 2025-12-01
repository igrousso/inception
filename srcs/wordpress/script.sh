#!/bin/bash

sleep 10;

wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$(cat /run/secrets/db_pw) --dbhost=mariadb:3306 --path='/var/www/wordpress'

wp core install --allow-root --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$(cat /run/secrets/wp_admin_pw) --admin_email=$WP_ADMIN_EMAIL;

wp user create $WP_USER $WP_USER_EMAIL --allow-root --user_pass=$(cat /run/secrets/wp_user_pw);

wp config set WP_REDIS_HOST redis --type=constant --allow-root;

wp config set WP_REDIS_PORT 6379 --type=constant --allow-root;

wp config set WP_CACHE true --type=constant --raw --allow-root;

wp plugin install redis-cache --activate --allow-root;

wp redis enable --allow-root;

php-fpm8.2 -F;
