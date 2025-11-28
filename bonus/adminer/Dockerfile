FROM debian:bookworm

RUN apt update && apt upgrade -y

RUN apt install -y php-fpm php-mysql wget

RUN mkdir -p /var/www/adminer

RUN wget -O /var/www/adminer/adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

RUN sed -i -r 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 9001/g' /etc/php/8.2/fpm/pool.d/www.conf

ENTRYPOINT ["php-fpm8.2", "-F"]
