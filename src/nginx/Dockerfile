FROM alpine:3.18.4

RUN apk update && apk upgrade && apk add nginx && apk add openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/rrupp.crt \
        -keyout /etc/nginx/ssl/rrupp.key \
        -subj "/CN=rrupp/"

COPY conf/nginx.conf /etc/nginx/http.d/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]