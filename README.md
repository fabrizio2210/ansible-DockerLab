# ansible-DockerLab
Infrastructure where you can test Docker stacks/services having a shared filesystem.
The playbook install a Docker swarm on several nodes and setup gluster to share configuration.

## Getting Started

You can play the playbook against a list of nodes prepared in an inventory

```
git clone --recursive https://github.com/fabrizio2210/ansible-DockerLab.git
cd ansible-DockerLab
ansible-playbook -i ../hosts.list setDocker-on-Raspberry.yml
```

or if you have Vagrant-libvirt intalled you can setup a testing environment with

```
git clone --recursive https://github.com/fabrizio2210/ansible-DockerLab.git
cd ansible-DockerLab
./test.sh
```


### Prerequisites
To deploy you need:
- Ansible

If you want to test the deploy you need:
- Vagrant
- libvirt

You can follow these guieds for Vagrant/libvirt:
https://linuxsimba.com/vagrant-libvirt-install
https://docs.cumulusnetworks.com/display/VX/Vagrant+and+Libvirt+with+KVM+or+QEMU
I am using debian/jessie64 box.

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

