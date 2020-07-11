#!/bin/sh
set -eox pipefail #safety for script
echo $SHELL # freebsd shell
whoami
id
echo '192.168.50.14 vgnode04 vgnode04.local' | tee -a /etc/hosts
echo '192.168.50.15 vgnode05 vgnode05.local' | tee -a /etc/hosts
cat /etc/hosts

echo "===================================================================================="
uname -a
echo "===================================================================================="
echo "         \   ^__^                                                                  "
echo "          \  (oo)\_______                                                          "
echo "             (__)\       )\/\                                                      "
echo "                 ||----w |                                                         "
echo "                 ||     ||                                                         "
#
# echo "=============================ansible ============================================================="
# # make -C /usr/ports/sysutils/ansible install # install from ports
# # pkg install py27-ansible #Python 2 version
# pkg install sudo #If the sudo command not foun
# type sudo #must have sudo installed
# #Allow members of group wheel to execute any command
# # stat /usr/local/etc/sudoers.d/allow-wheel-user-login
# # echo '%wheel ALL=(ALL) ALL' | sudo tee /usr/local/etc/sudoers.d/allow-wheel-user-login
# # cat /usr/local/etc/sudoers.d/allow-wheel-user-login


pkg install --yes python37 #Install Python 2.x or Python 3.x
type python3.7

pkg install --yes py37-ansible-2.9.7 #Python 3 version
ansible --version

cat <<EOF | tee ansible-local.yml
---
- name: "Run ansible locally localhost"
  hosts: localhost
  connection: local
  tasks:
  - name: "Upgrade the fbsd system"
    command: /usr/sbin/pkg update
  - name: "Install OpenVPN"
    pkgng: name=openvpn state=present
EOF
pwd && ls -lai
ansible-playbook ansible-local.yml


# cat <<EOF | tee hosts
# [grouphosts]
# 192.168.50.14
# 192.168.50.15
# EOF
# ansible -u root -i hosts -m raw -a 'uptime' grouphosts
# ansible -u root -i hosts -m raw -a 'hostname' grouphosts
# ansible -u vagrant -i hosts -m raw -a 'uptime' grouphosts
# ansible -u vagrant -i hosts -m raw -a 'hostname' grouphosts
echo "=========================================================================================="
