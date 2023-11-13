FROM alpine:3.18.4

RUN apk update && apk upgrade
#RUN apk add --no-cache php7 
RUN apk add php7-fpm
RUN apk add php7-mysql
#RUN apk add --no-cache php7-json 
#RUN apk add --no-cachephp7-curl 
#RUN apk add --no-cache php7-gd php7-mbstring
#RUN apk add --no-cache php7-xml
#RUN apk add --no-cache php7-session
#RUN apk add --no-cache php7-pecl-apcu
#RUN apk add --no-cache php7-opcache 
RUN apk add curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY src/wp-cli.sh /wp-cli.sh

CMD ["/wp-cli.sh"]
