FROM debian:bullseye

COPY nginx.conf /etc/nginx/conf.d

RUN apt-get update \
   && apt-get -y install nginx \
   && apt-get -y install openssl \
   && chmod -R 755 /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 
