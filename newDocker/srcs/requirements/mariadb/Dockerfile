FROM debian:11

RUN apt update && apt upgrade && apt install -y mariadb-server

COPY ./tools/db.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/db.sh 

CMD ["/usr/local/bin/db.sh"]
