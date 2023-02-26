Vagrant.configure("2") do |config|

  # Definindo o provider, nome no VirtualBox e alocando recursos
  config.vm.provider "virtualbox" do |v|
    v.name = "vagrant-docker"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Definindo hostname, SO e rede da VM
  config.vm.hostname = "ubuntu"
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.56.11"

  # Compartilhando a pasta que contém o playbook e as roles do Ansible
  config.vm.synced_folder "./ansible", "/ansible"

  # Instalar o Ansible
  config.vm.provision "shell", path: "provision.sh"

  # Instalando e executando o Ansible na VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/ansible"
    ansible.playbook = "playbook.yml"
  end

end
