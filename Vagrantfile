Vagrant.configure("2") do |config|

  # Definindo o provider, nome no VirtualBox e alocando recursos
  config.vm.provider "virtualbox" do |v|
    v.name = "vagrant-docker"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Definindo hostname e SO da VM
  config.vm.hostname = "ubuntu"
  config.vm.box = "ubuntu/focal64"

  # Configurando a rede

  # Redirecionamento de portas
  # config.vm.network "forwarded_port", guest: 80, host: 8080


  # Rede pública com ip estático
  # Altere o ip estático de acordo com a sua rede
  # Coloque um ip parecido com o da sua máquina física
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
