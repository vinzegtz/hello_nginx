FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y nginx

RUN echo 'Hello Nginx' > /usr/share/nginx/www/index.html
RUN echo 'Hello World' > /usr/share/nginx/www/hello.html

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]

EXPOSE 80