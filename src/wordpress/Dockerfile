FROM alpine:3.24

RUN apk add --no-cache \
    php84-fpm \
    php84-mysqli \
    php84 \
    php84-phar \
    php84-iconv \
    mysql-client \
    php84-openssl

RUN wget -q https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

COPY php.conf /etc/php84/php-fpm.d/www.conf
COPY php.ini /etc/php84/php.ini

RUN [ "ln", "-s", "/usr/bin/php84", "/bin/php" ] # wp-cli expects php to be in $PATH

COPY ./init_php.sh /init.sh

CMD ["/init.sh"]
