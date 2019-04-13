#!/usr/bin/env bash
php artisan route:clear
php artisan config:clear
php artisan cache:clear

php artisan key:generate
php artisan config:cache
php artisan storage:link

