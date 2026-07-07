FROM debian:latest

RUN apt update && apt upgrade && apt install -y \
    mariadb-server

COPY config/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/init.sql /etc/mysql/init.sql
COPY tools/init_mariadb.sh ./init.sh

RUN chmod +x ./init.sh
RUN mkdir /run/mysqld

CMD ["./init.sh"]
