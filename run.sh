#!/bin/bash

notify_user y "Starting script..."
sleep 5

echo  "Installing TypeDBServer Server..."
sudo apt install software-properties-common apt-transport-https
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 8F3DA4B5E9AEF44C
sudo add-apt-repository 'deb [ arch=all ] https://repo.vaticle.com/repository/apt/ trusty main'

sudo apt update

sudo apt install typedb-all

echo  "Start the TypeDB Server"
typedb server


echo  "Pulling latest feature files from Grakn Behaviour Repo"

git clone https://github.com/graknlabs/behaviour.git > /dev/null 2>&1

cd behaviour 
ls

# ToDO
# starting up grakn server, ideally not interrupting this script
# then including another running a julia script that installs Behave.jl
# and uses the feature files in behaviour to run the tests with TypeDBClient.jl against the server