#!/bin/bash

chown -R www-data:www-data /var/www/ftp/wordpress
chmod 755 /var/www/ftp/wordpress

/usr/sbin/vsftpd /etc/vsftpd.conf
