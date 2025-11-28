FROM debian:bookworm

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD

ENV DB_NAME=${DB_NAME} \
    DB_USER=${DB_USER} \
    DB_PASSWORD=${DB_PASSWORD}

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server 

RUN service mariadb start \
    && mariadb -e "create database ${DB_NAME};" \
    && mariadb -e "create user '${DB_USER}'@'%' identified by '${DB_PASSWORD}';" \
    && mariadb -e "grant all privileges on $DB_NAME.* to '${DB_USER}'@'%' with grant option;" \
    && mariadb -e "flush privileges;"

RUN sed -i -r 's/bind-address            = 127.0.0.1/bind-address            = */g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i -r 's/#user                    = mysql/user                    = root/g' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["mariadbd"]