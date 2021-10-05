# https://github.com/AminMkh/docker-php7-apache/blob/master/Dockerfile

FROM php:7.4-fpm
# TODO: FROM php:7.4-fpm-alpine

# clean up
RUN apt clean && apt-get update && apt-get upgrade -y

#install some basic tools
RUN apt-get install -y \
        vim \
        wget \
		git

RUN docker-php-ext-install pdo_mysql mysqli

RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-install zip
  
#RUN docker-php-ext-install mbstring

RUN apt-get install -y libicu-dev \
  && apt-get install -y locales locales-all \
  && docker-php-ext-install intl

RUN apt-get install -y \
        libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
  && docker-php-ext-install gd
  
# NODE
#RUN apt-get install -y \
#    software-properties-common \
#    npm
#RUN npm install npm@latest -g && \
#    npm install n -g && \
#    n latest
# https://github.com/nodesource/distributions/blob/master/README.md#deb
#RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - 
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - 
RUN apt-get install -y nodejs

# PHP composer
#RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/bin --filename=composer --version=1.10.22
RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/bin --filename=composer1 --version=1.10.22
RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/bin --filename=composer

# Symfony
#RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN wget https://get.symfony.com/cli/installer -O - | bash && mv /root/.symfony/bin/symfony /usr/local/bin/symfony
RUN symfony server:ca:install

RUN groupadd -g 1000 raphael && useradd -u 1000 -g 1000 -s /bin/bash -m raphael


