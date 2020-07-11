#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "=============================Install kvm qemu libvirt============================================================="
apt-get -qq update
apt-get install -y cpu-checker bridge-utils dnsmasq-base ebtables libvirt-bin libvirt-dev qemu-kvm qemu-utils ruby-dev
systemctl status libvirtd
libvirtd --version
egrep -c '(vmx|svm)' /proc/cpuinfo #If 0 it means that your CPU doesn't support hardware virtualization.If 1 or more it does - but you still need to make sure that virtualization is enabled in the BIOS.
addgroup libvirtd
adduser  $(id -un) libvirtd #ensure that your username is added to the group libvirtd
kvm-ok
