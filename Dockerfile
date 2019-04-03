FROM php:5.6-apache

LABEL maintainer="Bjoern Ludwig <bjoern.ludwig@ptb.de>"

# The installation of vim is for development purposes only to simplify
# troubleshooting. We use the default development configuration
RUN apt-get update && apt-get install -y \
        vim && \
    docker-php-ext-install mysql && \
    mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/conf.d/php.ini"
