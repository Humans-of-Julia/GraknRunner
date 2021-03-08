#!/bin/bash

notify_user y "Starting script..."
sleep 5

echo  "Installing Grakn Server..."
sudo apt install software-properties-common apt-transport-https
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 8F3DA4B5E9AEF44C
sudo add-apt-repository 'deb [ arch=all ] https://repo.grakn.ai/repository/apt/ trusty main'

sudo apt update

sudo apt install grakn-core-all


echo  "Pulling latest feature files from Grakn Behaviour Repo"

git clone https://github.com/graknlabs/behaviour.git > /dev/null 2>&1

cd behaviour 
ls

