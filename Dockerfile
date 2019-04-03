FROM php:5.6-apache

LABEL maintainer="Bjoern Ludwig <bjoern.ludwig@ptb.de>"

# This is for development purposes only to simplify
# Use the default development configuration
RUN apt-get update && apt-get install -y \
        vim && \
#    docker-php-ext-install mysqli mysql && \
    docker-php-ext-install mysql && \
    mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/conf.d/php.ini"
