FROM debian:12

RUN apt-get update && apt-get install -y \
	nginx \
	openssl && \
	rm -rf /var/lib/apt/lists/*

# copy des fichiers de configuration
COPY conf/default /etc/nginx/sites-available/default
# creation du respertoire pour les certificats
RUN mkdir -p /etc/nginx/ssl

# gestion du script d'initialisation
COPY tools/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

ENTRYPOINT ["init.sh"]