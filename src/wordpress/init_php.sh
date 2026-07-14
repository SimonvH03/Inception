#!/bin/bash

if [! -f /var/www/html/index.php ]; then
    echo "Initialising wordpress..."

    cd /var/www/html
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    ./wp-cli.phar core download --allow-root
    ./wp-cli.phar config create \
        --dbname="$(WP_DB_NAME)" \
        --dbuser="$(WP_ADMIN_USER)" \
        --dbpass="$(WP_ADMIN_PASSWORD)" \
        --dbhost=mariadb:3306 \
        --allow-root
    ./wp-cli.phar core install \
        --url=localhost \
        --title=inception \
        --admin_user="$(WP_ADMIN_USER)" \
        --admin_password="$(WP_ADMIN_PASSWORD)"
        --admin_email="$(WP_ADMIN_MAIL)" \
        --skip-email \
        --allow-root
    ./wp-cli.phar user create \
        --user_pass="$(WP_USER_PASS)" \
        "$(WP_USER)" \
        "$(WP_USER_MAIL)"
else
    echo "wordpress already installed, running..."
fi

exec php-fpm8.4 -F
