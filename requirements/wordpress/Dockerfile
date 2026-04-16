# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y \
	php php-fpm php-mysql wget

RUN wget https://wordpress.org/latest.tar.gz \
&&	tar -xvf latest.tar.gz

CMD ["php-fpm7.4", "-F"]