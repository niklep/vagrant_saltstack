#!/bin/sh

sudo cp /vagrant/minion /etc/salt/minion
sudo systemctl restart salt-minion
