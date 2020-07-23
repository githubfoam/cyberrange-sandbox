#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

vagrant box add "bento/opensuse-leap-15.1" --provider=virtualbox
vagrant mutate "bento/opensuse-leap-15.1" libvirt
vagrant up --provider=libvirt "vg-compute-10"

vagrant box add "bento/sles-15-sp1" --provider=virtualbox
vagrant mutate "bento/sles-15-sp1" libvirt
vagrant up --provider=libvirt "vg-compute-11"

vagrant box list #veridy installed boxes
vagrant status #Check the status of the VMs to see that none of them have been created yet
vagrant status
virsh list --all #show all running KVM/libvirt VMs



echo "========================================================================================="
