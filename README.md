# Vagrant DEV environment for PHP applications

The VM is running on the Centos 8.x box provided by Bento.

## Installed software
* Nginx
* PHP 7.4
* MySQL 5.7 (for added compatibility)


# Usage
In order to start up the VM you need to create a copy of each of the files in the path `chef/cookbooks/dev/attributes` and remove the .dist extension.

For example:
* default.rb.dist needs to become default.rb
* nginx.rb.dist needs to become nginx.rb

## Site file location
The website public files need to be placed in the `www/public` folder. For Symfony applications you will also have files outside of the public folder; this is
perfectly fine. If however you are doing a Wordpress installation I recommend that you update the `root` directive in the 
`chef/cookbooks/dev/templates/nginx/default.conf.erb` file.

## MySQL connection
To connect to the MySQL server you need to use the following connection info (default):
* hostname: 127.0.0.1
* port: 33061
* username: root
* password: Test.12345
