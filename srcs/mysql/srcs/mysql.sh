#!/bin/sh

/etc/init.d/mariadb setup

rc-service mariadb start

mariadb -u root -e "CREATE USER 'nouhaila'@'localhost' IDENTIFIED BY 'nouhaila';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'nouhaila'@'172.17.0.%' IDENTIFIED BY 'nouhaila';"
mariadb -u root -e "FLUSH PRIVILEGES;"

mariadb -u root -e "CREATE DATABASE phpmyadmin;"
mariadb -u root -e "CREATE DATABASE wordpress;"
mariadb -u root phpmyadmin < phpmyadmin.sql
mariadb -u root wordpress < wordpress.sql

rc-service telegraf start
telegraf --config /etc/telegraf.conf

exec top