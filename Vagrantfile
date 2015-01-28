# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Specify box
  config.vm.box = "ubuntu/trusty64"
  
  # Set-up non-conflicting ports for allowing port-forward to/from osx to guest vm machine
  # Node.js
  config.vm.network :forwarded_port, guest: 3001, host: 3000, auto_correct: true

  # MongoDB
  config.vm.network :forwarded_port, guest: 27017, host: 27016, auto_correct: true

  # Redis
  config.vm.network :forwarded_port, guest: 6379, host: 6379, auto_correct: true

  # 2-Way key sync
  config.vm.provision :shell, :path => "shell/provision-keys.sh", run: "always"

  # Set-up host-only private network access to the machine; avoids multiple machines sharing same ip address
  config.vm.network :private_network, ip: "192.168.33.10"

  # Added keys folder here
  config.vm.synced_folder "~/.ssh/misc-code-keys", "/home/vagrant/.ssh/misc-code-keys"

  # Provider-specific options for VirtualBox
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "512"
    ]
  end

  # Go ahead and extend puppet to install system-wide modules (node,redis,mongo,git) up to you
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "vagrant/puppet/manifests"
    puppet.module_path    = "vagrant/puppet/modules"
    puppet.manifest_file  = "main.pp"
    puppet.options        = [
                              '--verbose',
                              #'--debug',
                            ]
  end
end
