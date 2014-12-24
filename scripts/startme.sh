#!/bin/bash

#Systemd distros only, for now. IF someone wants to write "sudo service memcached start" etcetc, go for it, just make sure you put in the right conditionals to check which distro you're running on

sudo systemctl start nginx.service
sudo systemctl start mongodb.service
sudo systemctl start memcached.service

cd ../api
sleep 3
python2 ./api.py & disown
