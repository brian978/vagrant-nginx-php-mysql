#
# Cookbook:: default
# Recipe:: default
#
# Copyright:: 2020, brian978, All Rights Reserved.

# MySQL install
cookbook_file '/home/vagrant/scripts/mysql_install.sh' do
    source 'mysql/mysql_install.sh'
    owner 'root'
    group 'root'
    mode '0700'
end

execute 'mysql_install' do
    command 'sh /home/vagrant/scripts/mysql_install.sh'
end

# MySQL reset
template '/home/vagrant/scripts/mysql_reset.sh' do
    source 'mysql/mysqlreset.sh.erb'
    owner 'root'
    group 'root'
    mode '0700'
    variables(
        mysql_password: node['config']['mysql']['password']
    )
end

execute 'mysql_password_set' do
    command 'sh /home/vagrant/scripts/mysql_reset.sh'
end