#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

dnf -y update
dnf info ansible
dnf -y install ansible
ansible --version
echo "===================================================================================="
                          hostnamectl status
echo "===================================================================================="
echo "         \   ^__^                                                                  "
echo "          \  (oo)\_______                                                          "
echo "             (__)\       )\/\                                                      "
echo "                 ||----w |                                                         "
echo "                 ||     ||                                                         "
echo "=========================================================================================="
