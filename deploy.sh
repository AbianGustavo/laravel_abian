#!/bin/bash

scp .env abian@74.234.38.215:/home/abian/

ssh abian@74.234.38.215 "
    cd $(dirname $0)
    rm -r travelroad_laravel
    git clone git@github.com:AbianGustavo/laravel_abian.git
    mv .env /home/abian/laravel_abian
    mv laravel_abian travelroad_laravel
    cd /home/abian/travelroad_laravel
    composer install
    sudo chgrp -R nginx storage bootstrap/cache
    sudo chmod -R ug+rwx storage bootstrap/cache
"
