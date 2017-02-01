#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y apache2

if ! [ -L /var/www ]; then
  rm -rf /var/www/html
  ln -fs /vagrant_data /var/www/html
fi