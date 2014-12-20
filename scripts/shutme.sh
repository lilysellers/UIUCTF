#!/bin/bash

sudo systemctl stop nginx.service
sudo systemctl stop mongodb.service
sudo systemctl stop memcached.service
pkill python2
