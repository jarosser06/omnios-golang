# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "omnios-r151010j"
  config.vm.box_url = "http://public-mirror.tamu.edu/baseboxes/omnios-r151010j.box"

  config.vm.synced_folder ".", "/export/home/vagrant/golang"
end
