#!/bin/bash

# Script to install vbox on ubuntu 2204

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt update
sudo apt install -y virtualbox-7.0
sudo usermod -aG vboxusers $USER

echo "VirtualBox installation completed."
