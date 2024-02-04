#!/bin/bash

composer self-update --2

# Installer les dépendances laravel
composer update --no-interaction --optimize-autoloader && \
composer install --no-interaction --prefer-dist --no-dev

php artisan key:generate 
php artisan migrate --seed

# Install dependencie nodejs
npm install
npm run build

php-fpm