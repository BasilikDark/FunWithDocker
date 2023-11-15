FROM alpine:3.18.4

RUN apk update && apk upgrade && apk add --no-cache \
    php php-fpm 
#php-mysql
RUN apk add --no-cache lighttpd fcgi php-cgi
#RUN apk add --no-cache php7-json 
#RUN apk add --no-cache php7-curl 
#RUN apk add --no-cache php7-gd php7-mbstring
#RUN apk add --no-cache php7-xml
#RUN apk add --no-cache php7-session
#RUN apk add --no-cache php7-pecl-apcu
#RUN apk add --no-cache php7-opcache 
RUN apk add curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

#COPY ./src/wp-cli.sh /usr/local/bin/

#RUN chmod +x /usr/local/bin/wp-cli.sh

#ENTRYPOINT [ "/usr/local/bin/wp-cli.sh" ]
#RUN mkdir -p var && mkdir -p /var/www && mkdir -p /var/www/html 
#RUN wp core download --path=/var/www/html
#WORKDIR /var/www/html

CMD ["tail", "-f", "/def/null"]

#CMD ["/usr/sbin/php-fpm", "-F"]
