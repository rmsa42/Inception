FROM debian:bullseye

COPY nginx.conf /etc/nginx/conf.d/nginx.conf

RUN apt-get update \
   && apt-get -y install nginx \
   && apt-get -y install procps \
   && echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"] 
