FROM debian:bullseye

RUN apt-get update \
    && apt-get -y install curl \
    && apt-get -y install php7.4-fpm \
    && apt-get -y install php-mysql

COPY ./www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./script.sh /

RUN chmod +x script.sh
RUN mkdir /run/php

EXPOSE 9000

CMD ["bash", "./script.sh"]
