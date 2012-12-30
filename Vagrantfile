# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "dev-box"
  config.vm.box_url = "http://dl.dropbox.com/u/1537815/precise64.box"

  config.vm.share_folder "bridge", "/home/vagrant/bridge", File.expand_path("./bridge")

  config.ssh.forward_agent = true
  config.vm.network :hostonly, "192.168.33.10"
  # make the vm faster
  config.vm.customize [
    "modifyvm", :id,
    "--memory", (1 * 1024).to_s,
    "--cpus", 2
  ]

  # and enable symlinks in shared folders
  config.vm.customize [
    'setextradata', :id,
    'VBoxInternal2/SharedFoldersEnableSymlinksCreate/bridge', 1
  ]


  # Chefit
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path     = "cookbooks"
    chef.roles_path         = "roles"
    chef.add_role             "dev-machine"
  end
end
