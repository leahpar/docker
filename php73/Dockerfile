# https://github.com/AminMkh/docker-php7-apache/blob/master/Dockerfile

FROM php:7.3-fpm
# TODO: FROM php:7.4-fpm-alpine

# clean up
RUN apt clean && apt-get update && apt-get upgrade -y

#install some basic tools
RUN apt-get install -y \
        vim \
        wget

RUN docker-php-ext-install pdo_mysql

RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-install zip
  
RUN docker-php-ext-install mbstring

RUN apt-get install -y \
        libxml2-dev \
 && docker-php-ext-install xml

RUN apt-get install -y libicu-dev \
  && apt-get install -y locales locales-all \
  && docker-php-ext-install intl

RUN apt-get install -y \
        libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
  && docker-php-ext-install gd

# PHP composer
RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/bin --filename=composer --version=1.10.22

# Symfony
#RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN wget https://get.symfony.com/cli/installer -O - | bash && mv /root/.symfony/bin/symfony /usr/local/bin/symfony
RUN symfony server:ca:install

RUN groupadd -g 1000 raphael && useradd -u 1000 -g 1000 -s /bin/bash -m raphael

