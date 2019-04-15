FROM php:7.2.10-fpm

WORKDIR /var/www/mrricco

RUN apt-get update && apt-get install -y --no-install-recommends curl git apt-transport-https \
    && docker-php-ext-install pdo pdo_mysql \
    && curl -sSk https://getcomposer.org/installer | php -- --disable-tls \
    &&  mv composer.phar /usr/local/bin/composer \
    && rm -rf /var/lib/apt/lists/*

COPY . ./

RUN composer install \
    &&  bash commands.sh

