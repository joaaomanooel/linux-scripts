# !/bin/bash

# Dnf
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf clean all -y
sudo dnf autoremove -y

# Yum
sudo yum update -y
sudo yum upgrade -y
sudo yum clean all -y

# Firefox developer
sudo sh /opt/firefox-developer

# Snap
sudo snap refresh

# Npm
npm i -g npm
