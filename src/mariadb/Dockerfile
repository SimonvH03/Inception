FROM alpine:3.24

RUN apk add --no-cache \
    mariadb \
    mariadb-client

RUN mkdir /var/run/mysqld \
    && chown -R mysql:mysql /var/run/mysqld \
    && chmod 777 /var/run/mysqld

EXPOSE 3306

COPY ./init_mariadb.sh /init.sh
COPY ./mariadb-server.cnf /etc/my.cnf.d

CMD ["/init.sh"]
