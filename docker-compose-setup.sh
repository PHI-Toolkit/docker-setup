#!/bin/bash
sudo apt-get install -y curl
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > docker-compose
chmod a+x docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose
