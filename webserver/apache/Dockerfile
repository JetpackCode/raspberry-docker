FROM php-image
RUN apt-get update
RUN apt-get install apache2 libapache2-mod-php7.3 -y --no-install-recommends --no-install-suggests
RUN usermod -u 1000 www-data
RUN a2dismod mpm_event && a2enmod php7.3 && a2enmod rewrite
ENTRYPOINT apache2ctl -DFOREGROUND
