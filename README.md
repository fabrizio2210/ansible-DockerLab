# ansible-DockerLab

Infrastructure where you can test Docker stacks/services having a shared filesystem and a Virtual IP.
The playbook install a Docker swarm on several nodes and setup gluster to share configuration.

![Schema](/images/DockerLab.png)

## Getting Started

You can play the playbook against a list of nodes prepared in an inventory

### Prerequisites

To deploy you need Ansible.

The inventory should contain the group of nodes _docker-bare_metal_ and the swarm managers _docker_swarm_manager_. Normally they coincide.

Example of inventory:
```
[docker-bare_metal]
raspberrypi0
raspberrypi1
raspberrypi2

[docker_swarm_manager:children]
docker-bare_metal
```

You should define the Virtual IP coherently with your subnet without collision.
For example in a network 192.168.1.0/24:
```
keepalived_shared_ip=192.168.1.253
```

### Deployment

Execution on live environment:
```
git clone --recursive https://github.com/fabrizio2210/ansible-DockerLab.git
cd ansible-DockerLab
ansible-playbook -i ../hosts.list setDocker-on-Raspberry.yml
```

Then you can access with browser to Portainer on port 9000 using the defined IP:
```
http://192.168.1.253:9000
```

## Testing

### Prerequisites

If you want to test the deploy in a virtual environment you need:
- Vagrant
- libvirt
- Ansible

You can follow these guides for Vagrant/libvirt:

https://linuxsimba.com/vagrant-libvirt-install

https://docs.cumulusnetworks.com/display/VX/Vagrant+and+Libvirt+with+KVM+or+QEMU

https://docs.cumulusnetworks.com/cumulus-vx/Getting-Started/Libvirt-and-KVM-QEMU/

In summary the steps to do are:
```
sudo apt install vagrant vagrant-libvirt

sudo apt install libvirt-daemon-system  python3-distutils  python3-gi-cairo  python3-lib2to3  python3-libvirt qemu-kvm   spice-client-glib-usb-acl-helper  systemd-container    virt-manager  virt-viewer   virtinst  libgovirt-common   gir1.2-gtk-vnc-2.0

sudo systemctl restart libvirtd

# logout and login, you should have the libvirt group

sudo apt install python3-paramiko python3-venv python3-pip

```

I am using debian/jessie64 box. 

### Deployment

After you have Vagrant-libvirt intalled you can setup a testing environment with

```
git clone --recursive https://github.com/fabrizio2210/ansible-DockerLab.git
cd ansible-DockerLab
./test.sh
```

![create test environment](/images/tty_create_test_env.gif)

Then you can access with browser to Portainer on port 9000 using the defined IP:
```
http://192.168.121.253:9000
```

## Build with

I used these components:
* Keepalived
* Docker Swarm
* GlusterFS
* Portainer

I find useful to install after deployment also Traefik.

## Authors

* **Fabrizio Waldner** - *Initial work* - [fabrizio2210](https://github.com/fabrizio2210)



