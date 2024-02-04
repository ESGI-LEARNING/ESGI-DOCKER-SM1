FROM composer

COPY . /var/www

WORKDIR /var/www

CMD composer update
CMD composer dump-autoload --optimize

CMD php artisan key:generate
CMD php artisan optimize:clear
