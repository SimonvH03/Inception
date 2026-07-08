FROM debian:bookworm

RUN apt update && apt upgrade && apt install -y \
    php-fpm \
    php-mysqli \
    curl

COPY config/php.conf /etc/php/8.4/fpm/pool.d/www.conf
COPY tools/init_php.sh ./init.sh

RUN chmod +x init.sh

CMD ["./init.sh"]
