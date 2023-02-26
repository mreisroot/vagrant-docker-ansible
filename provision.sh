#!/bin/sh

sudo su <<- EOF
  apt update
  apt install -y software-properties-common
  add-apt-repository --yes --update ppa:ansible/ansible
  apt install -y ansible
EOF
