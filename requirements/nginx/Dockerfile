FROM debian:12

RUN apt-get update && apt-get install -y \
	nginx \
	openssl && \
	rm -rf /var/lib/apt/lists/*

COPY default /etc/nginx/sites-available/.

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt -sha256 -subj "/CN=mrabat.42.fr"

CMD ["nginx", "-g", "daemon off;"]