# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y \
	mariadb-server

COPY config/init.sql /init.sql

CMD ["mysqld"]