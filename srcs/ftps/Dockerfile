FROM alpine:3.11
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk update
RUN apk add openrc --no-cache
RUN openrc default

RUN apk add vsftpd 
RUN rc-update add vsftpd default
RUN rc-service vsftpd restart

COPY ./srcs/vsftpd.conf  /etc/vsftpd/vsftpd.conf
RUN apk add openssl
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem -subj "/C=MA/ST=BENG/L=BENG/O=LEET/CN=FTPS"

RUN apk add telegraf
COPY ./srcs/telegraf.conf /etc/

COPY ./srcs/start.sh ./start.sh
RUN chmod +x /start.sh
ENTRYPOINT [ "sh","start.sh" ]

EXPOSE 21