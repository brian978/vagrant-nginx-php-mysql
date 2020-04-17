#!/bin/bash

# Install
yum install -y epel-release
yum install -y nginx
systemctl enable nginx
systemctl start nginx

# Directories for configurations
if [[ ! -d /etc/nginx/sites-available ]]
then
    mkdir /etc/nginx/sites-available
fi

if [[ ! -d /etc/nginx/sites-enabled ]]
then
    mkdir /etc/nginx/sites-enabled
fi