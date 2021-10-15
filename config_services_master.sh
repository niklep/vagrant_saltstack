#!/bin/sh

sudo cp /vagrant/master /etc/salt/master
sudo cp /vagrant/site.sls /srv/salt/site.sls
sudo cp /vagrant/top.sls /srv/salt/top.sls
sudo cp /vagrant/index.html.jinja /srv/salt/files/index.html.jinja
sudo cp /vagrant/nginx.conf /srv/salt/files/nginx.conf

sudo systemctl restart salt-master
