FROM php:5.6-apache

LABEL maintainer="Bjoern Ludwig <bjoern.ludwig@ptb.de>"

# Install MySQL and copy production-ready `php.ini` to proper location.
RUN docker-php-ext-install mysql && \
    mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/conf.d/php.ini"
