#!/bin/bash

mkdir /etc/nginx/tls
cd /etc/nginx/tls
openssl req -x509 -newkey rsa:4096 -keyout localhost.key -out localhost.crt -sha256 -days 3650 -nodes -subj "/C=PT/ST=Porto/L=Porto/O=42Porto/OU=42Porto/CN=rumachad"
exec nginx -g "daemon off;"
