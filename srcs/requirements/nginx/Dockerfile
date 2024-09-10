FROM debian:bullseye

COPY nginx.conf /etc/nginx/conf.d/nginx.conf

RUN apt-get update \
   && apt-get -y install nginx \
   && apt-get -y install openssl \
   && echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx"] 
