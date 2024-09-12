FROM debian:bullseye

RUN apt-get update \
    && apt-get -y install mariadb-server mariadb-client mariadb-backup

COPY ./script.sh /
RUN chmod +x script.sh

EXPOSE 3306

CMD ["bash", "./script.sh"]
