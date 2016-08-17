#!/bin/bash
# based on https://docs.docker.com/engine/installation/linux/ubuntulinux/

printf "Installing docker and docker compose on your computer running Ubuntu Trusty...\n"
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-cache policy docker.io
sudo delgroup docker
sudo apt-get install -y docker.io
sudo apt-get install -y linux-image-extra-$(uname -r)
sudo apt-get install -y apparmor
sudo apt-get install -y linux-image-generic-lts-trusty
sudo apt-get autoremove -y
sudo groupadd docker
sudo update-rc.d docker defaults
printf "\n\nPlease reboot your computer after running this script!\n\n"
printf "After reboot, type: sudo service docker start\n\n"
