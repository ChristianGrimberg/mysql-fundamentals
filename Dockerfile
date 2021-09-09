FROM php:8.0-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*