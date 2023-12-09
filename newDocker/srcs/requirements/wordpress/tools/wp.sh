#!/bin/sh

sleep 24

wp core download --allow-root

wp config create  --dbname=$MARIADB_DATABASE --dbuser=$MARIADB_USER --dbpass=$MARIADB_PASSWORD --dbhost=mariadb --allow-root

wp core install --url=rrupp.42.fr --title=Example --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_PW --admin_email=bulb@blub.blub --allow-root

exec php-fpm7.4 -F
