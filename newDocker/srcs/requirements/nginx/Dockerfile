FROM debian:11

RUN apt update && apt upgrade && apt install -y nginx openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/rrupp.crt \
        -keyout /etc/nginx/ssl/rrupp.key \
        -subj "/CN=rrupp/"

COPY ./tools/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
