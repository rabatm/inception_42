#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

# Attendre que la base de données soit prête
until mysql -h"$WORDPRESS_DB_HOST" -u"$WORDPRESS_DB_USER" -p"$WORDPRESS_DB_PASSWORD" -e 'SELECT 1'; do
  >&2 echo "La base de données n'est pas encore prête - attente..."
  sleep 1
done

./wp-cli.phar core download --allow-root

# Creation de la configuration
./wp-cli.phar config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --allow-root

# Instation de wordpress
urlwp="https://${DOMAIN_NAME}"
./wp-cli.phar core install --url=$urlwp --title=$WORDPRESS_TITLE --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL --allow-root
./wp-cli.phar user create $WORDPRESS_USER $WORDPRESS_USER_MAIL --role=author --user_pass=$WORDPRESS_PASSWORD --allow-root

php-fpm8.2 -F