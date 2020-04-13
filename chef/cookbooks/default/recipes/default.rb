#
# Cookbook:: default
# Recipe:: default
#
# Copyright:: 2020, brian978, All Rights Reserved.

# Timezone setup
execute 'update_timezone' do
    command 'sudo timedatectl set-timezone UTC'
end

# file locations
if !Dir::exists?('/home/vagrant/config')
    Dir::mkdir('/home/vagrant/config')
end

if !Dir::exists?('/home/vagrant/scripts')
    Dir::mkdir('/home/vagrant/scripts')
end