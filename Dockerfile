FROM php:8.1-apache
# Включаем модуль rewrite для Apache
RUN a2enmod rewrite
# Устанавливаем расширение pdo_mysql
RUN docker-php-ext-install pdo_mysql
