FROM alpine:3.11

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk update
RUN apk add --upgrade influxdb

RUN apk add openrc --no-cache
RUN openrc default

RUN rc-update add influxdb default

RUN apk add --upgrade telegraf-openrc
RUN apk add telegraf

COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/influxdb.conf /etc/
COPY ./srcs/start.sh ./start.sh

RUN chmod +x /start.sh
ENTRYPOINT [ "sh","start.sh" ]

EXPOSE 8086