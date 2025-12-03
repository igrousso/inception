FROM debian:bookworm

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server 

RUN sed -i -r 's/bind-address            = 127.0.0.1/bind-address            = */g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i -r 's/#user                    = mysql/user                    = root/g' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY script.sh /

RUN chmod +x script.sh

ENTRYPOINT ["/script.sh"]