
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

 if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote = true
 end

 config.vm.define "consul_node1" do |node1|
    node1.vm.box = "bento/ubuntu-22.04"
    node1.vm.network "private_network", ip: "192.168.33.10"
    node1.vm.hostname = "consul-node1"
    node1.vm.provision "shell", path: "ConsulN1Provision.sh"
 end

 config.vm.define "consul_node2" do |node2|
    node2.vm.box = "bento/ubuntu-22.04"
    node2.vm.network "private_network", ip: "192.168.33.11"
    node2.vm.hostname = "consul-node2"
    node2.vm.provision "shell", path: "ConsulN2Provision.sh"
 end
end

