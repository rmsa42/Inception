FROM debian:bullseye

RUN apt-get update \
    && apt-get -y install curl \
    && apt-get -y install php-fpm

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp-cli

CMD ["wp-cli", "--allow-root", "--path=data", "core", "download"]
