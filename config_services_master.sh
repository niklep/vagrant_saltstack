#!/bin/sh

sudo cp /home/vagrant/salt/etc/master /etc/salt/master
sudo cp /home/vagrant/salt/srv/site.sls /srv/salt/site.sls
sudo cp /home/vagrant/salt/srv/top.sls /srv/salt/top.sls
sudo cp /home/vagrant/salt/srv/files/index.html.jinja /srv/salt/files/index.html.jinja
sudo cp /home/vagrant/salt/srv/files/nginx.conf /srv/salt/files/nginx.conf

sudo systemctl restart salt-master
