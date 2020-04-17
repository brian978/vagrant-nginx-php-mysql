#!/bin/bash

curl -L https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm -o /tmp/mysql57-community-release-el7-9.noarch.rpm
rpm -ivh /tmp/mysql57-community-release-el7-9.noarch.rpm
yum install -y mysql-server
systemctl enable mysqld
systemctl start mysqld