FROM debian:11

RUN apt update && apt upgrade
RUN apt-get install -y curl php php-fpm php-phar php-curl php-mysqli

COPY ./tools/wp.sh /usr/local/bin/
COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN mkdir -p /run/php/
RUN chown -R www-data:www-data /run/php/
RUN chmod +x wp-cli.phar 
RUN chmod +x /usr/local/bin/wp.sh 
RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

CMD ["wp.sh"]
