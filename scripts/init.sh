#!/bin/bash

#source /usr/local/rvm/scripts/rvm
/etc/init.d/postgresql start
#/opt/msf/msfupdate --git-branch master
#/opt/msf/msfconsole
#/bin/bash
cd /opt/beef
sed -i 's/\(\s\)passwd: "beef"/\1passwd: "docker_beef"/g' config.yaml
sed -i 's/user:   "beef"/user:   "admin"/g' config.yaml
sed -i 's/#public: ""/public: "admin.beef"/g' config.yaml
sed -i 's/#public_port: ""/public_port: "80"/g' config.yaml
sed -i 's/debug: false/debug: true/g' config.yaml
bash -c "/opt/beef/beef -x -v -c /opt/beef/config.yaml"
