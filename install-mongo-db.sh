#!/bin/bash
#For use with Ubuntu 18.04
#source documentation is here: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
#import public key used by apt for MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

# Create a list file for MongoDB.
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

#update package store database
sudo apt-get update

#install the package
sudo apt-get install -y mongodb-org

#prevent auto-updates of MongoDB
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
