#!/bin/sh
cd /var/www/wordpress
until mariadb -h mariadb -u  aelidrys -p1234 -e ";" ;do
	echo "waiting..."
	sleep 2
done 
echo "succsefll.."
wp config create	--allow-root \
		--dbname=$SQL_DATABASE \
		--dbuser=$SQL_USER \
		--dbpass=$SQL_PASSWORD \
		--dbhost=mariadb:3306 \
        --path='/var/www/wordpress'

wp core install --allow-root \
		--url=${DOMAIN_NAME} --title=${WP_TITLE} \
		--admin_user=${WP_USER} --admin_password=${WP_PASSWD} \
		--admin_email=${WP_EMAIL} 

wp user create aban aban@gmail.com --role=editor --user_pass=abanABAN1@ --allow-root

php-fpm7.3 -F