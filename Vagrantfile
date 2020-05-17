# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "512"
    vb.cpus = 2
  end

  config.vm.define "master01" do |hpcluster|
    hpcluster.vm.box = "bento/fedora-31"
    hpcluster.vm.hostname = "master01"
    hpcluster.vm.network "private_network", ip: "192.168.1.254"
    hpcluster.vm.provider "virtualbox" do |vb|
        vb.name = "master01"
        vb.memory = "4096"
    end
    hpcluster.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "deploy.yml"
    ansible.become = true
    ansible.compatibility_mode = "2.0"
    ansible.version = "2.9.7"
    end
    hpcluster.vm.provision "shell", inline: <<-SHELL
    systemctl disable firewalld
    systemctl stop firewalld
    yum -y update
    yum install -y wget
    hostnamectl status
    SHELL
  end


  config.vm.define "compute01" do |hpcluster|
    hpcluster.vm.box = "bento/fedora-31"
    hpcluster.vm.hostname = "compute01"
    hpcluster.vm.network "private_network", ip: "192.168.1.253"
    hpcluster.vm.provider "virtualbox" do |vb|
        vb.name = "compute01"
        vb.memory = "4096"
    end
    hpcluster.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "deploy.yml"
    ansible.become = true
    ansible.compatibility_mode = "2.0"
    ansible.version = "2.9.7"
    end
    hpcluster.vm.provision "shell", inline: <<-SHELL
    hostnamectl status
    SHELL
  end

  config.vm.define "compute02" do |hpcluster|
    hpcluster.vm.box = "bento/fedora-31"
    hpcluster.vm.hostname = "compute02"
    hpcluster.vm.network "private_network", ip: "192.168.1.252"
    hpcluster.vm.provider "virtualbox" do |vb|
        vb.name = "compute02"
        vb.memory = "4096"
    end
    hpcluster.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "deploy.yml"
    ansible.become = true
    ansible.compatibility_mode = "2.0"
    ansible.version = "2.9.7"
    end
    hpcluster.vm.provision "shell", inline: <<-SHELL
    hostnamectl status
    SHELL
  end

end
