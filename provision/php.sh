#!/bin/bash

sudo yum install -y yum-utils
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