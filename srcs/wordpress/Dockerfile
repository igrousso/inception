FROM debian:bookworm

RUN apt update -y && apt upgrade -y

RUN apt install wget -y

RUN apt install -y php-fpm php-mysql php-redis

RUN sed -i -r 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 9000/g' /etc/php/8.2/fpm/pool.d/www.conf

RUN rm -f /var/www/html/wordpress/wp-config-sample.php

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/wordpress

COPY ./script.sh /

RUN chmod +x script.sh

WORKDIR /var/www/wordpress

RUN wp core download --allow-root

RUN mkdir -p /run/php

ENTRYPOINT ["/script.sh"]
# ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]