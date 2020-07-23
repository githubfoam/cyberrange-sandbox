#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

# https://www.debian.org/releases/

#https://github.com/chef/bento/tree/master/packer_templates/debian
# vagrant box add "bento/ubuntu-19.10" --provider=virtualbox
# vagrant mutate "bento/ubuntu-19.10" libvirt
# vagrant up --provider=libvirt "vg-compute-01"

# https://app.vagrantup.com/archlinux
# vagrant box add "archlinux/archlinux" --provider=libvirt
# vagrant up --provider=libvirt "vg-compute-02"

#https://github.com/chef/bento/tree/master/packer_templates/debian
# vagrant box add "bento/debian-10.4" --provider=virtualbox
# vagrant mutate "bento/debian-10.4" libvirt
# vagrant up --provider=libvirt "vg-compute-05"

# vagrant ssh "vg-compute-05" -c "sudo blazescan -h"
# vagrant ssh "vg-compute-05" -c "sudo clamscan -ir -d /tmp/lw-yara/ /tmp/*"
# vagrant ssh "vg-compute-05" -c "sudo perl nikto.pl -h http://www.google.com"


# https://app.vagrantup.com/archlinux
# vagrant box add "archlinux/archlinux" --provider=libvirt
# vagrant up --provider=libvirt "vg-compute-06"


# OK with bento/debian-10.4 though
#The error appears to have been in '/vagrant/provisioning/roles/common/tasks/main.yml': line 11, column 3, but may
# https://github.com/chef/bento/tree/master/packer_templates/debian
# vagrant box add "bento/debian-9.12" --provider=virtualbox
# vagrant mutate "bento/debian-9.12" libvirt
# vagrant up --provider=libvirt "vg-compute-04"



# vagrant box add "freebsd/FreeBSD-12.1-STABLE" --provider=virtualbox
# vagrant mutate "freebsd/FreeBSD-12.1-STABLE" libvirt
# vagrant up --provider=libvirt vgnode04

# vagrant box add "bento/hardenedbsd-11" --provider=virtualbox
# vagrant mutate "bento/hardenedbsd-11" libvirt
# vagrant up --provider=libvirt vgnode05

# # vagrant cloud debian box specific
# # adapter to enable NFS on this machine for Vagrant.
# # Please verify that `nfsd` is installed on your machine, and try again
# # HOST is not windows.
# # HOST is travisci bionic server
# apt-get install nfs-common nfs-kernel-server -qqy
#
# #https://www.vagrantup.com/docs/synced-folders/nfs.html#root-privilege-requirement
# TMP=$(mktemp) #temporary file to contain the sudoers-changes
# cat > $TMP <<EOF
# Cmnd_Alias VAGRANT_EXPORTS_ADD = /bin/su root -c echo '*' >> /etc/exports
# Cmnd_Alias VAGRANT_NFSD = /etc/init.d/nfs-kernel-server restart
# Cmnd_Alias VAGRANT_EXPORTS_REMOVE = /bin/sed -e /*/ d -ibak /etc/exports
# %admin ALL=(root) NOPASSWD: VAGRANT_EXPORTS_ADD, VAGRANT_NFSD, VAGRANT_EXPORTS_REMOVE
# EOF
# cat $TMP
# visudo -c -f $TMP # Check if the changes are OK
# # $? is a variable holding the exit code of the last run command
# if [ $? -eq 0 ]; then
#     # This computes! Starting up visudo with this script as first parameter
#     export EDITOR=$0 && export FILE_OK=$TMP && sudo -E visudo -f /etc/sudoers.d/vagrant_sudoers
# fi
#
# #https://app.vagrantup.com/debian/boxes/buster64
# vagrant box add "debian/buster64" --provider=libvirt
# vagrant up --provider=libvirt "vg-compute-02"
#
# #https://app.vagrantup.com/debian/boxes/stretch64
# vagrant box add "debian/stretch64" --provider=libvirt
# vagrant up --provider=libvirt "vg-compute-03"

# # https://github.com/chef/bento/tree/master/packer_templates/ubuntu
# vagrant box add "bento/ubuntu-19.10" --provider=virtualbox
# vagrant mutate "bento/ubuntu-19.10" libvirt
# vagrant up --provider=libvirt "vg-compute-01"


# #https://github.com/chef/bento/tree/master/packer_templates/debian
# vagrant box add "bento/debian-10.4" --provider=virtualbox
# vagrant mutate "bento/debian-10.4" libvirt
# vagrant up --provider=libvirt "vg-compute-05"

# https://github.com/chef/bento/tree/master/packer_templates/centos
vagrant box add "bento/centos-8.2" --provider=virtualbox
vagrant mutate "bento/centos-8.2" libvirt
vagrant up --provider=libvirt "vg-compute-06"

# https://app.vagrantup.com/fedora/boxes/32-cloud-base
vagrant box add "centos/8" --provider=libvirt
vagrant up --provider=libvirt "vg-compute-13"

# vagrant box add "bento/fedora-32" --provider=virtualbox
# vagrant mutate "bento/fedora-32" libvirt
# vagrant up --provider=libvirt "vg-compute-09"

# # https://app.vagrantup.com/fedora/boxes/32-cloud-base
# vagrant box add "fedora/32-cloud-base" --provider=libvirt
# vagrant up --provider=libvirt "vg-compute-12"



vagrant box list #veridy installed boxes
vagrant status #Check the status of the VMs to see that none of them have been created yet
vagrant status
virsh list --all #show all running KVM/libvirt VMs



echo "========================================================================================="
