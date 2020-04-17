#
# Cookbook:: dev
# Recipe:: nginx
#
# Copyright:: 2020, brian978, All Rights Reserved.

# Main config
cookbook_file '/etc/php-fpm.d/www.conf' do
    source 'php-fpm/www.conf'
    owner 'root'
    group 'root'
    mode '0644'
end

execute "php_restart" do
    command "sudo systemctl restart php-fpm"
end