#!/bin/bash

service mariadb start
sleep 1

if ! mariadb -e "USE ${DB_NAME};" 2>/dev/null; then
    mariadb -e "create database ${DB_NAME};"
    mariadb -e "create user '${DB_USER}'@'%' identified by '$(cat /run/secrets/db_pw)';"
    mariadb -e "grant all privileges on $DB_NAME.* to '${DB_USER}'@'%' with grant option;"
    mariadb -e "flush privileges;"
fi

mysqladmin -u root shutdown

exec mariadbd