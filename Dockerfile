FROM ubuntu:18.04
MAINTAINER toto tony@dejesus.pt
RUN apt-get update && apt-get install nginx git -y
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
RUN apt-get remove git -y && apt-get autoremove
RUN echo "salut toi"
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
