FROM debian:bookworm

RUN apt update && apt upgrade && apt install -y \
    php-fpm \
    php-mysqli \
    curl

EXPOSE 9000

COPY php.conf /etc/php/8.4/fpm/pool.d/www.conf
COPY init_php.sh ./init.sh

RUN chmod +x init.sh

CMD ["./init.sh"]
