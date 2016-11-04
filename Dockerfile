FROM php:5.6-apache

RUN usermod -u 1000 www-data

RUN apt-get update && apt-get install -y \
      libpng12-dev libtidy-dev \
    && docker-php-ext-install -j$(nproc) gd mysqli tidy \
    && a2enmod rewrite

RUN echo '[Date]\n\
date.timezone = "Australia/Melbourne"'\
>> /usr/local/etc/php/conf.d/timezone.ini
