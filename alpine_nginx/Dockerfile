FROM alpine:latest
RUN apk update
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
ADD nginx.conf /etc/nginx/nginx.conf
ADD start_nginx.sh /
ADD stop_nginx.sh /
