#!/bin/sh

apk add wget
wget https://wordpress.org/latest.tar.gz
tar xf latest.tar.gz
mv wordpress/ /www/
chown -R www:www /www/wordpress
# mv /www/wordpress/* /www/
# rm -rf /www/wordpress
mv /wp-config.php /www/wordpress
apk add php7-fpm php7 php7-session php7-gd php7-opcache php7-zlib php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
rc-update add php-fpm7 default
apk add php7-mbstring
#start ngnx
rc-service nginx start
rc-service php-fpm7 start

rc-service telegraf start
telegraf --config /etc/telegraf.conf

exec top 