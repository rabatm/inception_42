FROM debian:12

RUN apt-get update && apt-get install -y \
	php-fpm \
	php-mysql \
	mariadb-client \
	curl \
	sendmail

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/.

COPY tools/script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]