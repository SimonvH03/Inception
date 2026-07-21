#!/bin/sh

install() {
	cd /var/www/html

	wp core download
	wp config create \
		--dbname="${DB_NAME}" \
		--dbuser="${DB_USER}" \
		--dbpass="${DB_USER_PASSWORD}" \
		--dbhost="mariadb:3306"
	wp core install \
		--url=localhost \
		--title=Inception \
		--admin_user="${WP_ADMIN}" \
		--admin_password="${WP_ADMIN_PASSWORD}" \
		--admin_email="${WP_ADMIN_MAIL}" \
		--skip-email
	wp user create \
		--user_pass="${WP_USER_PASSWORD}" \
		"${WP_USER}" \
		"${WP_USER_MAIL}"
}


until mariadb \
    -h mariadb \
    -u "$DB_USER" \
    -p"$DB_USER_PASSWORD" \
    -e "SELECT 1;" >/dev/null 2>&1
do
    echo "Waiting for MariaDB..."
    sleep 2
done

if [ ! -f /var/www/html/index.php ]; then
    echo "initialising wordpress..."
    install
else
    echo "wordpress already initialised, running..."
fi

exec php-fpm84 -F -O
