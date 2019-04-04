#!/bin/bash
#instructions are for ubuntu 18.04

#install jre
sudo apt install default-jre

#install maven
sudo apt install maven

#install eclipse
sudo snap install --classic eclipse

#install spring tool suite 3 in eclipse marketplace

#****these commands are needed for compiling
sudo apt install default-jdk            
sudo apt install openjdk-11-jdk-headless
sudo apt install ecj                    
sudo apt install openjdk-8-jdk-headless
#*****

#******install javadoc for openjdk (will be slightly different for Sun JDK)
sudo apt-get install openjdk-11-source

#this will show the location of your javadoc src archive
sudo apt-get install dpkg
dpkg -L openjdk-11-source | grep '.zip'

#open eclipse, navigate to window>preferences>java>installed JREs>select current one
#edit>source attachment put the printout from the previous command here
#*********

