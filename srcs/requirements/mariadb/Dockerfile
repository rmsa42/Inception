FROM debian:bullseye

RUN apt-get update \
    && apt-get -y install mariadb-server mariadb-client

COPY ./script.sh /
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x script.sh

EXPOSE 3306

ENTRYPOINT ["./script.sh"]
