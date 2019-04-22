#!/bin/bash
set -x
set -e

# docker1 -> 192.168.122.10
# docker2 -> 192.168.122.11
# mockup  -> 192.168.122.20
dockerList=(
docker1
docker2
docker3
)
certificateList=(
api.ipify.org
)
docker1Key=".vagrant/machines/docker1/libvirt/private_key"
docker1IP="192.168.122.10"
docker1User="vagrant"
docker2Key=".vagrant/machines/docker2/libvirt/private_key"
docker2IP="192.168.122.11"
docker2User="vagrant"
docker3IP="192.168.122.12"
docker3User="vagrant"
docker3Key=".vagrant/machines/docker3/libvirt/private_key"

_pwd=$PWD
tempDir=$(mktemp -d)

# Vagrant up
vagrant up

# Set infrastructure

#ansible-playbook -i vagrant-hosts.list setDocker-on-Raspberry.yml
ansible-playbook -i vagrant.py -i vagrant-groups.list setDocker-on-Raspberry.yml

#for _host in ${dockerList[@]} ; do
#  # Set a single static IP
#  eval ssh  -i \$${_host}Key -o StrictHostKeyChecking=no \$${_host}User@\$${_host}IP \"sudo ip addr flush eth1 \; sleep 1 \; sudo systemctl restart systemd-networkd.service\"
#  eval ssh  -i \$${_host}Key -o StrictHostKeyChecking=no \$${_host}User@\$${_host}IP \"pgrep dhclient \&\& sudo killall dhclient \|\| echo nessun dhclient \"
#
#
#done


[ -n "$tempDir" ] && rm -rf "$tempDir"
