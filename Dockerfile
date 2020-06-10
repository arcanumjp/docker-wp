FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        nginx \
        mysql-server \
        php-fpm \
        wget \
        unzip \
        php-mysql

RUN apt-get install -y vim

WORKDIR /var/www


#COPY ./my.cnf /etc/my.cnf
#COPY ./initdb.sql /var/www/initdb.sql
COPY ./entrypoint.sh /var/www/entrypoint.sh
RUN chmod +x /var/www/entrypoint.sh


CMD /var/www/entrypoint.sh



# php.ini の設定
#RUN perl -pi -e 's/^;date.timezone =/date.timezone = \"Asia\/Tokyo\"/' /etc/php/7.4/fpm/php.ini
#RUN perl -pi -e 's/^expose_php = On/expose_php = Off/' /etc/php/7.4/fpm/php.ini




# nginx の設定


# wordpress の設定
#ENV USER root
#ENV PASS root

#RUN wget https://ja.wordpress.org/wordpress-5.4.1-ja.zip && \
#    unzip -q wordpress-5.4.1-ja.zip && \
#    mv wordpress/* /var/www/html && \
#    rm index.nginx-debian.htm


 
EXPOSE 80


