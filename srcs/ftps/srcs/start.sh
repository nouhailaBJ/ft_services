#!/bin/sh

touch /run/openrc/softlevel
addgroup nouhaila
adduser -D -G nouhaila -h /home/nouhaila -s /bin/false nouhaila
echo "nouhaila:nouhaila" | /usr/sbin/chpasswd
chown nouhaila:nouhaila /home/nouhaila/ -R

vsftpd /etc/vsftpd/vsftpd.conf&

rc-service telegraf start
telegraf --config /etc/telegraf.conf

exec top 