FROM php:7.2.10-fpm

RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/mrricco

#COPY . ./ //todo: вернуть для деплоя

#RUN chmod -R 777 ./storage

EXPOSE 9000

