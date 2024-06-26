#!/bin/sh

sed -i 's/server_name %DOMAIN_NAME%;/server_name mrabat.42.fr;/g' /etc/nginx/sites-available/default


openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt -sha256 \
    -subj "/CN=${DOMAIN_NAME}"
# Suivi par la commande pour démarrer nginx ou tout autre service principal
nginx -g 'daemon off;'