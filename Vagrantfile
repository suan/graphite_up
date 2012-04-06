require 'rubygems'

Vagrant::Config.run do |config|
  config.vm.box = "graphite"
  config.vm.host_name = "graphite"
  config.vm.box_url = 'http://mathie-vagrant-boxes.s3.amazonaws.com/debian_squeeze_32.box' 

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks']

    chef.add_recipe 'apt'
    chef.add_recipe 'python'    # also installs pip
    chef.add_recipe 'graphite'
   end
end
