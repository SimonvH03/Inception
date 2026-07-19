#!/bin/sh

install() {
	cd /var/www/html

	wp core download
	wp config create \
		--dbname="${WP_DB_NAME}" \
		--dbuser="${WP_ADMIN_USER}" \
		--dbpass="${WP_ADMIN_PASSWORD}" \
		--dbhost="mariadb:3306"
	wp core install \
		--url=localhost \
		--title=Inception \
		--admin_user="${WP_ADMIN_USER}" \
		--admin_password="${WP_ADMIN_PASSWORD}" \
		--admin_email="${WP_ADMIN_MAIL}" \
		--skip-email
	wp user create \
		--user_pass="${WP_USER_PASSWORD}" \
		"${WP_USER}" \
		"${WP_USER_MAIL}"
}

if [ ! -f /var/www/html/index.php ]; then
    echo "initialising wordpress..."
    install
else
    echo "wordpress already initialised, running..."
fi

exec php-fpm84 -F -O
