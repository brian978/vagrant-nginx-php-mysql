#!/bin/bash

# Disable default package
dnf module reset -y mysql
dnf module disable -y mysql

# Get the MySQL official RPM
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql
rpm -Uvh https://repo.mysql.com/yum/mysql-5.7-community/el/7/x86_64/mysql57-community-release-el7-10.noarch.rpm

# Install & enable the server
dnf install -y mysql-community-server
systemctl enable mysqld
systemctl start mysqld