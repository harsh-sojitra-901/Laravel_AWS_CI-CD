#!/bin/bash

echo "Starting Laravel application..."

cd /var/www/html

echo "Stopping old Laravel process on port 8000..."
sudo fuser -k 8000/tcp || true

echo "Starting Laravel server..."
nohup php artisan serve --host=0.0.0.0 --port=8000 > laravel.log 2>&1 &

echo "Laravel application started on port 8000."