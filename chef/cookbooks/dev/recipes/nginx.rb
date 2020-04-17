#
# Cookbook:: dev
# Recipe:: nginx
#
# Copyright:: 2020, brian978, All Rights Reserved.

# Site config
template '/etc/nginx/site-available/default.conf' do
    source 'nginx/default.cont.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables(
        hostname: node['config']['nginx']['hostname']
    )
end