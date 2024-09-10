FROM debian:bullseye

RUN apt-get update \
    && apt-get -y install curl \
    && apt-get -y install php7.4-fpm \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp-cli \
    && mkdir wordpress \
    && wp-cli --allow-root --path=wordpress core download

RUN mkdir /run/php

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]
