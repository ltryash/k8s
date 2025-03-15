FROM ubuntu
MAINTAINER yash<2002yash.lateri@gmail.com>
RUN apt update
RUN apt install apache2 -y
RUN apt install git -y
RUN rm /var/www/html/index.html
RUN git clone https://github.com/akshu20791/apachewebsite /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
