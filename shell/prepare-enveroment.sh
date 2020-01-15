#!/usr/bin/env bash

echo "install git"
sudo yum -y install git

echo "install ansible"
sudo yum-config-manager --enable epel
sudo yum -y repolist
sudo yum -y install ansible

echo "install docker-compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose