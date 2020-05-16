#!/bin/bash

# GPG Keys
rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-8
rpm --import https://rpms.remirepo.net/RPM-GPG-KEY-remi2020
rpm --import https://rpms.remirepo.net/RPM-GPG-KEY-remi2019
rpm --import https://rpms.remirepo.net/RPM-GPG-KEY-remi2018

# Utilities
sudo yum install -y yum-utils

# Versioning
sudo yum install -y git

# PHP
sudo yum install -y http://rpms.remirepo.net/enterprise/remi-release-8.rpm
sudo yum module reset -y php
sudo yum module enable -y php:remi-7.4
sudo yum install -y php \
                    php-fpm \
                    php-bcmath \
                    php-gd \
                    php-intl \
                    php-json \
                    php-ldap \
                    php-mbstring \
                    php-opcache \
                    php-pdo \
                    php-pecl-mysql \
                    php-pecl-geoip \
                    php-pecl-imagick \
                    php-pecl-memcached \
                    php-pecl-rdkafka \
                    php-pecl-zip \
                    php-pecl-xdebug \
                    php-pgsql \
                    php-process \
                    php-snmp \
                    php-soap \
                    php-tidy \
                    php-xml

# PHP Tools
sudo curl https://getcomposer.org/composer-stable.phar -o /usr/local/bin/composer && chmod +x /usr/local/bin/composer
sudo curl https://phar.phpunit.de/phpunit-9.phar -o /usr/local/bin/phpunit && chmod +x /usr/local/bin/phpunit