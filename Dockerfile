FROM php:7.2.10-fpm

RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/mrricco

COPY . ./

RUN bash commands.sh

EXPOSE 9000

