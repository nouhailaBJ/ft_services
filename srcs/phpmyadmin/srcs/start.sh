#!/bin/sh

apk add wget
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
tar -zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages/ phpmyadmin/
mv /phpmyadmin /www
chown -R www:www /www/phpmyadmin
# mv /www/phpmyadmin/* /www/
# rm -rf /www/phpmyadmin
mv /config.inc.php /www/phpmyadmin
mkdir www/phpmyadmin/tmp/
chmod 777 /www/phpmyadmin/tmp/
apk add php7-fpm php7 php7-session php7-gd php7-opcache php7-zlib php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
rc-update add php-fpm7 default
apk add php7-mbstring
#start ngnx
apk add mysql-client
rc-service nginx start
rc-service php-fpm7 start

rc-service telegraf start
telegraf --config /etc/telegraf.conf

exec top 