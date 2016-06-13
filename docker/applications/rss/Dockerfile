FROM php:7.0-apache

ADD fever/ /var/www/html/

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    && docker-php-ext-install gd \
    && docker-php-ext-install mysqli pdo_mysql

RUN rm -rf /var/www/html/index.html && \
    chmod -R 777 /var/www/html/
