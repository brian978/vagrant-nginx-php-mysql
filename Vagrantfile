# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento/centos-8"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 33061

  # Synced folders
  config.vm.synced_folder "www/", "/var/www", create: true
  config.vm.synced_folder "data/", "/var/data", create: true

  # Server install
  config.vm.provision "shell", path: "provision/nginx.sh"
  config.vm.provision "shell", path: "provision/php.sh"
  config.vm.provision "shell", path: "provision/mysql.sh"

  # chef provisioning
  config.vm.provision "chef_solo" do |chef|
    chef.arguments = "--chef-license accept"
    
    chef.cookbooks_path = "chef/cookbooks"

    chef.run_list = [
      "recipe[dev::default]",
      "recipe[dev::php]",
      "recipe[dev::nginx]",
      "recipe[dev::mysql]",
    ]
  end
end