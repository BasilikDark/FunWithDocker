#! /bin/bash

# preping file
mkdir -p /var/www/
mkdir -p /var/www/html

# Install WordPress in the volume directory
wp core download --path=/var/www/html

# Configure WordPress to use the volume directory
# wp core config --path=/var/www/html --dbname=your_database_name --dbuser=your_database_user --dbpass=your_database_password --dbhost=your_database_host

# Copy WordPress files to the volume directory
# wp core install --path=/var/www/html --url=your_website_url --title=YourWebsiteTitle --admin_user=your_admin_user --admin_password=your_admin_password --admin_email=your_admin_email

# Activate your desired plugins and themes

/usr/sbin/php-fpm -F
