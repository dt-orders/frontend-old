FROM ubuntu:16.04

# Update Ubuntu
RUN apt-get update ; apt-get dist-upgrade -y -qq 

# Install Apache + modules
RUN apt-get install -y -qq apache2 && \
    a2enmod proxy proxy_http proxy_ajp rewrite deflate headers proxy_connect proxy_html lbmethod_byrequests && \
    mkdir /var/lock/apache2 && mkdir /var/run/apache2

# Config Apache
COPY index.html /var/www/html/index.html
COPY health /var/www/html/health
COPY dynatrace_logo.png /var/www/html/dynatrace_logo.png
COPY black-friday-fashion-friends-1345082.jpg /var/www/html/black-friday-fashion-friends-1345082.jpg
COPY 000-default.conf  /etc/apache2/sites-enabled/000-default.conf
COPY ports.conf  /etc/apache2/ports.conf
ENV SERVICES_PORT=80

EXPOSE 8080
CMD apache2ctl -D FOREGROUND
