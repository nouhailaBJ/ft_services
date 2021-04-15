FROM alpine:3.11

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk update

RUN apk add openrc --no-cache
RUN openrc default

# RUN apk add grafana
RUN wget https://dl.grafana.com/oss/release/grafana-7.4.1.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.4.1.linux-amd64.tar.gz
RUN apk add libc6-compat

RUN apk add --upgrade telegraf-openrc
RUN apk add telegraf

COPY ./srcs/grafana.db /grafana-7.4.1/data/grafana.db

COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/start.sh ./start.sh
RUN chmod +x /start.sh
ENTRYPOINT [ "sh","start.sh" ]

EXPOSE 3000
