#!/bin/bash

# Updates and package installation

if command -v apt-get >/dev/null 2>&1;then

    #debian Based
    sudo apt-get -y update 
    sudo apt-get -y upgrade
    sudo apt-get -y install unzip
    sudo apt-get -y install nginx
    sudo apt-get -y install memcached
    sudo apt-get -y install libmemcached-dev
    sudo apt-get -y install mongodb
    sudo apt-get -y install python-setuptools python-dev build-essential
    sudo apt-get -y install gunicorn
    sudo apt-get -y install git
    sudo apt-get -y install exiv2
    sudo apt-get -y install python-imaging
    
    sudo easy_install pip
    sudo pip install --upgrade virtualenv
    sudo pip install Flask
    sudo pip install watchdog -U
    sudo pip install argcomplete
    sudo pip install flask-pymongo
    sudo pip install py-bcrypt
    sudo pip install pylibmc
    
    # Start nginx
    
    sudo mkdir --parents /srv/http/main-site
    
    sudo service nginx start

elif command -v pacman >/dev/null 2>&1;then

    # Arch Linux Based. I think this is everything, but it might not be.
    # If you use this, and it doesn't get everything or you get an error, reference
    # the debian packages above for what you might be missing. 

    sudo pacman -Syyu --noconfirm
    sudo pamcan -S --noconfirm unzip nginx memcached libmemcached mongodb python2 git exiv2 python2-pip
    sudo pip2 install --upgrade virtualenv
    sudo pip2 install Flask
    sudo pip2 install watchdog -U
    sudo pip2 install argcomplete
    sudo pip2 install flask-pymongo
    sudo pip2 install py-bcrypt
    sudo pip2 install pylibmc

# Fedora, Gentoo, etc can add elif statements here...
else
    echo "Not a recognized platform for automatic installation of necessary dependencies, sorry."
fi
