#!/bin/sh

# Download key
sudo curl -fsSL -o /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/debian/10/amd64/latest/salt-archive-keyring.gpg
# Create apt sources list file
echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/py3/debian/10/amd64/latest buster main" | sudo tee /etc/apt/sources.list.d/salt.list

sudo apt-get update -y
sudo apt-get install -y salt-master

sudo cp /etc/salt/master /etc/salt/master.default

sudo mkdir -p /home/vagrant/salt/srv/files
sudo mkdir -p /home/vagrant/salt/etc
sudo mkdir -p /srv/salt/files

