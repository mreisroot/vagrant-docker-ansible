# Máquina Vagrant com servidor NGINX em container

Neste projeto, há a criação de uma máquina virtual Vagrant que irá hospedar um container contendo o servidor web NGINX.

O provisionamento da máquina virtual e do container será feito pelo Ansible.

## Preparando e executando a automação

Após a criação da máquina, há uma sequência de comandos que realizará as seguintes etapas:

1. Atualizar os repositórios do Ubuntu

2. Instalar o Ansible

3. Executar as instruções descritas no arquivo **playbook.yml** através do comando

`ansible-playbook --connection=local playbook.yml`

## Resultados

Após a execução das instruções do playbook, o servidor terá:

1. O Docker instalado

2. Um volume que irá conter o arquivo index.html

3. Um container do servidor NGINX que servirá a API do site [VIACEP](https://viacep.com.br/)

## Como usar este projeto

Para criar a máquina virtual Vagrant, execute o comando:

`vagrant up`

Para acessar a api servida pelo NGINX, digite na barra de pesquisa de um navegador web:

`<ip_do_servidor>:8080`

No caso deste projeto, a pesquisa ficará assim:

`192.168.15.55:8080`

Altere o endereço IP de acordo com a sua rede nos arquivos **Vagrantfile**.
