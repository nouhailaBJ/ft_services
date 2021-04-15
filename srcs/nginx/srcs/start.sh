#!/bin/sh

#start ngnx
rc-service nginx start
# start sshd
/etc/init.d/sshd start

rc-service telegraf start
telegraf --config /etc/telegraf.conf

exec top 