FROM debian:bullseye

RUN apt-get update \
    && apt-get -y install mariadb-server mariadb-client

COPY ./tools/script.sh .
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x script.sh

EXPOSE 3306

CMD ["./script.sh"]
