FROM debian:bookworm

RUN apt update && apt upgrade -y

RUN apt install nginx -y

RUN mkdir -p /var/www/static-site

RUN chmod 755 /var/www/static-site

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html

COPY html /var/www/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]