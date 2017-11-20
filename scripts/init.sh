#!/bin/bash

#source /usr/local/rvm/scripts/rvm
/etc/init.d/postgresql start
#/opt/msf/msfupdate --git-branch master
#/opt/msf/msfconsole
#/bin/bash
cd /opt/beef
sed -i 's/\(\s\)passwd: "beef"/\1passwd: "docker_beef"/g' config.yaml
sed -i 's/#public: ""/public: "192.168.50.110"/g' config.yaml
sed -i 's/#public_port: ""/public_port: "80"/g' config.yaml
./beef -x -v
