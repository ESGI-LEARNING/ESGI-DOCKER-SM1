<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## TP Final docker 

### Service docker:

- php
- nginx
- mariadb
- phpmyadmin
- mailhog
- redis
- minio

### Procédure d'installation

Step-by-step setup

   * Update composer.json, you can change the project name / description and tags for example
   * Move .env.example to .env and edit it according to your project
   * Start containers with docker compose up -d
   * Run into the php container with docker compose exec php bash
   * Install php libs with composer install
   * Install javascript libs with yarn
   * Run either yarn dev or yarn build
   * Generate application secret key with php artisan key:generate
   * Enjoy :)

Fast setup https://github.com/TheoMeunier/esgi-docker-tp
cp .env.example .env
docker compose up -d
docker compose exec php composer install
docker compose exec php npm install
docker compose exec php npm run dev
docker compose exec php php artisan key:generate

### Acccess ports url
 - php : http://localhost/8100
 - nginx :
     - serveur 1 : http://localhost/8088
     - serveur 2 : http://localhost/8089
- phpmyadmin : http://localhost/8100
- mailhog : http://localhost/8025
- minio : http://localhost/8900
- traefik : http://localhost/8080

### Authors
* Théo Meunier @TheoMeunier
* Alice Lemerre @AliceLemerre
