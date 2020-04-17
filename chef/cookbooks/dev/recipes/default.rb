#
# Cookbook:: dev
# Recipe:: default
#
# Copyright:: 2020, brian978, All Rights Reserved.

# Timezone setup
execute "update_timezone" do
    command "timedatectl set-timezone #{node['config']['system']['timezone']}"
end

# file locations
if !Dir::exists?('/home/vagrant/scripts')
    Dir::mkdir('/home/vagrant/scripts')
end