#!/bin/bash

#start the mongod service
sudo service mongod start

#verify "[initandlisten] waiting for connections on port 27017" is in this log file
cat /var/log/mongodb/mongod.log
