# !/bin/bash

until nc -z mariadb 3306; do
  echo "Waiting for MariaDB..."
  sleep 1
done

wp config create	--allow-root \
					--dbname="$SQL_DATABASE" \
					--dbuser="$SQL_USER" \
					--dbpass="$SQL_PASSWORD" \
					--dbhost="mariadb:3306" \
				 	--path='/var/www/wordpress'


if [ $? -ne 0 ]; then
    echo "Failed to create WP config."
    exit 1
fi


/usr/sbin/php-fpm7.3 -F