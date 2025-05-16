FROM php:8.1-apache
# Обновление apt, установка git, unzip, libzip-dev; установка php-zip
RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip git libzip-dev \
    && docker-php-ext-install zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# Добавляем Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
# Включаем модуль rewrite для Apache
RUN a2enmod rewrite
# Устанавливаем расширение pdo_mysql
RUN docker-php-ext-install pdo_mysql
