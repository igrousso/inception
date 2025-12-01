#!/bin/bash

usermod -s /bin/bash www-data
echo "www-data:$(cat /run/secrets/ftp_pw)" | chpasswd

chown -R www-data:www-data /var/www/ftp/wordpress
chmod 755 /var/www/ftp/wordpress

/usr/sbin/vsftpd /etc/vsftpd.conf
