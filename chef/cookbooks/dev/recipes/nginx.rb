#
# Cookbook:: dev
# Recipe:: nginx
#
# Copyright:: 2020, brian978, All Rights Reserved.

# Main config
cookbook_file '/etc/nginx/nginx.conf' do
    source 'nginx/nginx.conf'
    owner 'root'
    group 'root'
    mode '0644'
end

# Site config
template '/etc/nginx/sites-available/default.conf' do
    source 'nginx/default.conf.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables(
        hostname: node['config']['nginx']['hostname']
    )
end

execute "nginx_enable_site" do
    command "sudo ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf && sudo systemctl restart nginx"
end