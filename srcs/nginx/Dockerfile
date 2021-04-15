FROM alpine:3.11

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk update
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
COPY ./srcs/index.html /www/index.html
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

COPY ./srcs/nginx.conf /etc/nginx/nginx.conf

RUN apk add openrc --no-cache
RUN openrc default
RUN rc-update add nginx default

RUN apk add openssl
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

RUN apk add openssh
RUN rc-update add sshd
RUN adduser -D nouhaila
RUN echo "nouhaila:password"|chpasswd
RUN ssh-keygen -A

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk update
RUN apk add telegraf
COPY ./srcs/telegraf.conf /etc/

COPY ./srcs/start.sh ./start.sh
RUN chmod +x /start.sh
ENTRYPOINT [ "sh","start.sh" ]

EXPOSE 80 443 22