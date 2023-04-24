#!/bin/bash

gnome_extensions_install() {
	echo 'Gnome Extensions INSTALL'
	
wget https://downloads.mongodb.com/compass/mongodb-compass_1.30.1_amd64.deb
sudo apt install ./mongodb-compass_*_amd64.deb
}

