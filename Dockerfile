FROM openresty/openresty:alpine

LABEL maintainer="niklas.ekman@gmail.com"

COPY nginx.conf         /usr/local/openresty/nginx/conf/
COPY *.vhost            /usr/local/openresty/nginx/conf/
COPY lib/prometheus.lua /usr/local/openresty/luajit/lib

RUN nginx -t