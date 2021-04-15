FROM alpine:3.11

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk update
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

COPY ./srcs/nginx.conf /etc/nginx/nginx.conf

RUN apk add openrc --no-cache
RUN openrc default
RUN rc-update add nginx default

COPY srcs/wp-config.php /

RUN apk add telegraf
COPY ./srcs/telegraf.conf /etc/

COPY ./srcs/start.sh ./start.sh
RUN chmod +x /start.sh
ENTRYPOINT [ "sh","start.sh" ]

EXPOSE 5050