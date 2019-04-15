#!/usr/bin/env bash
php artisan route:clear
php artisan config:clear
php artisan cache:clear
rm ./public/storage

php artisan key:generate
php artisan storage:link
php artisan config:cache

