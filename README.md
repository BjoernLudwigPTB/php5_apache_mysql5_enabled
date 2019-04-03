# php5_apache_mysql5_enabled

This repository holds the configuration for a Docker image based on PHP 5.6 with
an Apache webserver and MySQL enabled. This configuration is chosen because of
the use of `mysql_connect()` in a present project, to momentarily avoid
switching to *MySQLi*.

Based on *php:5.6-apache* the mysql extension is installed and the
production-ready `php.ini` is copied to `$PHP_INI_DIR/conf.d`.
