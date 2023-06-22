FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \ 
    vim \ 
    wget

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN docker-php-ext-enable pdo pdo_mysql mysqli

COPY . /var/www/html

WORKDIR /var/www/html

