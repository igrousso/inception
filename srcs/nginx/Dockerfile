FROM debian:bookworm

RUN apt update -y && apt upgrade -y

RUN apt install -y nginx

RUN apt install -y openssl

RUN mkdir -p /etc/nginx/ssl\
    && openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt -keyout /etc/nginx/ssl/certificate.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=igrousso.42.fr/UID=igrousso"

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/wordpress

RUN mkdir -p /var/www/adminer

RUN chmod 755 /var/www/wordpress

RUN chmod 755 /var/www/adminer

RUN chown -R www-data:www-data /var/www/wordpress

ENTRYPOINT ["nginx"]

CMD ["-g", "daemon off;"]
