FROM debian:buster


# Déclaration des variables from .env
ARG MYSQL_ROOT_PASSWORD
ARG WORDPRESS_DB_NAME
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD

RUN apt update && apt upgrade -y && apt install -y \
    mariadb-server \
    mariadb-client \
    gettext-base


RUN mkdir -p /var/lib/mysql /var/run/mysqld \
    && chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \
    && chmod 777 /var/run/mysqld \
    && mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY tools/init_db.sql.template /etc/mysql/init_db.sql.template

COPY conf/my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN echo "MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}"
RUN echo "WORDPRESS_DB_NAME: ${WORDPRESS_DB_NAME}"

RUN sed -i "s/\$WORDPRESS_DB_NAME/$WORDPRESS_DB_NAME/g" /etc/mysql/init_db.sql.template && \
    sed -i "s/\$WORDPRESS_DB_USER/$WORDPRESS_DB_USER/g" /etc/mysql/init_db.sql.template && \
    sed -i "s/\$WORDPRESS_DB_PASSWORD/$WORDPRESS_DB_PASSWORD/g" /etc/mysql/init_db.sql.template && \
    sed -i "s/\$MYSQL_ROOT_PASSWORD/$MYSQL_ROOT_PASSWORD/g" /etc/mysql/init_db.sql.template && \
    mv /etc/mysql/init_db.sql.template /etc/mysql/init_db.sql && \
    echo "==== Contenu de init_db.sql ====" && \
    cat /etc/mysql/init_db.sql && \
    echo "==== Fin du fichier ===="

CMD ["mysqld", "--log-error=/var/log/mysqld_safe.log"]