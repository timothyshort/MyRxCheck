# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "scripts/", "/home/vagrant/scripts"

  config.vm.provision "shell", inline: <<-SHELL
    cd scripts
    ./provision.sh
    echo "******************"
    python test.py
  SHELL
end
