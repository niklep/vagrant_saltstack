#!/bin/sh

sudo cp /home/vagrant/salt/etc/minion /etc/salt/minion
sudo systemctl restart salt-minion
