Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end

  #phoenix
  config.vm.network :forwarded_port, guest: 4000, host: 4000

  #postgres
  config.vm.network :forwarded_port, guest: 5432, host: 15432

  config.vm.provision :shell, path: "VagrantConfig/bootstrap.sh"
  config.vm.provision :shell, path: "VagrantConfig/install-phoenix.sh", privileged: false
end
