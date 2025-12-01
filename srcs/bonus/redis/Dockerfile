FROM debian:bookworm

RUN apt update -y && apt upgrade -y

RUN apt install -y redis-server

RUN sed -i -r 's/bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf

RUN sed -i -r 's/protected-mode yes/protected-mode no/g' /etc/redis/redis.conf

RUN sed -i -r 's/daemonize yes/daemonize no/g' /etc/redis/redis.conf

ENTRYPOINT ["redis-server", "/etc/redis/redis.conf"]
