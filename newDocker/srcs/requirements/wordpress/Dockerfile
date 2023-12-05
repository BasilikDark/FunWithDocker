FROM alpine:3.17

RUN apk update && apk upgrade && add --no-cache \
        curl php php-fpm php-phar php-curl php-mysqli

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

COPY ./tools/wp.sh /usr/local/bin/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && chmod +x /usr/local/bin/wp.sh && mv wpcli.phar /usr/local/bin/wp

WORKDIR /var/www/html

CMD ["wp.sh"]
