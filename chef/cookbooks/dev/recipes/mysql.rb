#
# Cookbook:: dev
# Recipe:: mysql
#
# Copyright:: 2020, brian978, All Rights Reserved.

# MySQL reset
template '/home/vagrant/scripts/mysql_reset.sh' do
    source 'mysql/mysqlreset.sh.erb'
    owner 'root'
    group 'root'
    mode '0700'
    variables(
        password: node['config']['mysql']['password']
    )
end

execute 'mysql_password_set' do
    command 'sh /home/vagrant/scripts/mysql_reset.sh'
end