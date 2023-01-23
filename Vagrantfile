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
  config.vm.box = "ubuntu/focal64"
  config.vm.network "public_network", ip: "192.168.15.55"

  # Compartilhando a pasta que contém o playbook e as roles do Ansible
  config.vm.synced_folder "./ansible", "/ansible"

  # Instalando e executando o Ansible na VM
  config.vm.provision "shell", inline: <<-'SHELL'
    sudo apt update
    sudo apt install -y ansible
    ansible-playbook --connection=local /ansible/playbook.yml
  SHELL

end
