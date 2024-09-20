FROM debian:bullseye

RUN apt-get update \
   && apt-get -y install nginx \
   && apt-get -y install openssl \
   && chmod -R 777 /var/www/html \
   && rm /etc/nginx/sites-enabled/default

COPY ./conf/default.conf /etc/nginx/conf.d/ng.conf

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
