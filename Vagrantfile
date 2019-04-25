# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

# Check required plugins
REQUIRED_PLUGINS_LIBVIRT = %w(vagrant-libvirt)
exit unless REQUIRED_PLUGINS_LIBVIRT.all? do |plugin|
  Vagrant.has_plugin?(plugin) || (
    puts "The #{plugin} plugin is required. Please install it with:"
    puts "$ vagrant plugin install #{plugin}"
    false
  )
end

Vagrant.configure("2") do |config|

  # node1 VM
  config.vm.define "docker1" do |node1|
    node1.vm.hostname = "docker1"
    node1.vm.box = "debian/jessie64"
    node1.vm.box_check_update = false
    node1.vm.synced_folder '.', '/vagrant', :disabled => true
    node1.vm.provider :libvirt do |domain|
      domain.memory = 512
      domain.nested = true
      domain.storage :file, :size => '1G'
    end
  end
  # node2 VM
  config.vm.define "docker2" do |node2|
    node2.vm.hostname = "docker2"
    node2.vm.box = "debian/jessie64"
    node2.vm.box_check_update = false
    node2.vm.synced_folder '.', '/vagrant', :disabled => true
    node2.vm.provider :libvirt do |domain|
      domain.memory = 512
      domain.nested = true
      domain.storage :file, :size => '1G'
    end
  end
  # node3 VM
  config.vm.define "docker3" do |node3|
    node3.vm.hostname = "docker3"
    node3.vm.box = "debian/jessie64"
    node3.vm.box_check_update = false
    node3.vm.synced_folder '.', '/vagrant', :disabled => true
    node3.vm.provider :libvirt do |domain|
      domain.memory = 512
      domain.nested = true
      domain.storage :file, :size => '1G'
    end
  end
  # node4 VM
  config.vm.define "docker4" do |node4|
    node4.vm.hostname = "docker4"
    node4.vm.box = "debian/jessie64"
    node4.vm.box_check_update = false
    node4.vm.synced_folder '.', '/vagrant', :disabled => true
    node4.vm.provider :libvirt do |domain|
      domain.memory = 512
      domain.nested = true
      domain.storage :file, :size => '1G'
    end
  end
end
