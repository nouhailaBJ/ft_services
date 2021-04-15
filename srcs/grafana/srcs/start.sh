#!/bin/sh

grafana-7.4.1/bin/grafana-server --homepath grafana-7.4.1 &

rc-service telegraf start

telegraf --config /etc/telegraf.conf

exec top 