FROM debian:bookworm

RUN apt update && apt upgrade && apt install -y \
    mariadb-server

RUN mkdir /var/run/mysqld \
    && chown -R myql:mysql /var/run/mysqld \
    && chmod +x /var/run/mysqld

EXPOSE 3306

COPY mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY init.sql /etc/mysql/init.sql
COPY init_mariadb.sh ./init.sh

RUN chmod +x ./init.sh
RUN mkdir /run/mysqld

CMD ["./init.sh"]
