FROM alpine:3.11

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk update
RUN apk add mariadb mariadb-common mariadb-client

RUN  apk add openrc --no-cache
RUN openrc default
RUN rc-update add mariadb default

RUN apk add telegraf
COPY ./srcs/telegraf.conf /etc/

COPY ./srcs/mysql.sh ./mysql.sh
COPY ./srcs/mariadb-server.cnf /etc/my.cnf.d/
COPY ./srcs/phpmyadmin.sql /
COPY ./srcs/wordpress.sql /
RUN chmod +x /mysql.sh
ENTRYPOINT [ "sh","mysql.sh"]

EXPOSE 3306