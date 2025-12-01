FROM debian:bookworm

RUN apt update && apt upgrade -y

RUN apt install -y vsftpd

RUN mkdir -p /var/www/ftp/wordpress && \
    chown nobody:nogroup /var/www/ftp && \
    chmod 555 /var/www/ftp

COPY vsftpd.conf /etc/vsftpd.conf

COPY script.sh /script.sh

RUN chmod +x script.sh

RUN mkdir -p /var/run/vsftpd/empty

ENTRYPOINT ["/script.sh"]
