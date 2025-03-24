FROM php:8.4-fpm

# COMPOSER
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir="/usr/bin" --filename=composer

# Install dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libzip-dev \
    libcurl4-openssl-dev \
    && docker-php-ext-install sockets curl zip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
