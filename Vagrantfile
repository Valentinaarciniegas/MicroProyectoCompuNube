# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

 if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote = true
 end

 config.vm.define "consulnode1" do |consulnode1|
    consulnode1.vm.box = "bento/ubuntu-22.04"
    consulnode1.vm.network "private_network", ip: "192.168.33.10"
    consulnode1.vm.hostname = "consulnode1"
    consulnode1.vm.provision "shell", path: "ConsulN1Provision.sh"
    consulnode1.vm.synced_folder "C:/Users/Acer/Documents/especializacion/Computacion en la nube/Proyecto", "/vagrant_data"
 end

 config.vm.define "consulnode2" do |consulnode2|
    consulnode2.vm.box = "bento/ubuntu-22.04"
    consulnode2.vm.network "private_network", ip: "192.168.33.11"
    consulnode2.vm.hostname = "consulnode2"
    consulnode2.vm.provision "shell", path: "ConsulN2Provision.sh"
    consulnode2.vm.synced_folder "C:/Users/Acer/Documents/especializacion/Computacion en la nube/Proyecto", "/vagrant_data"
 end

config.vm.define "haproxy" do |haproxy|
    haproxy.vm.box = "bento/ubuntu-22.04"
    haproxy.vm.network "private_network", ip: "192.168.33.12"
    haproxy.vm.hostname = "haproxy"
    haproxy.vm.provision "shell", path: "HaproxyProvision.sh"
    haproxy.vm.synced_folder "C:/Users/Acer/Documents/especializacion/Computacion en la nube/Proyecto", "/vagrant_data"
 end
end
