#!/bin/bash

system_setup() {
	echo "SYSTEM SETUP"
	
	sudo apt-get update -y
	sudo apt-get upgrade -y

	sudo apt-get autoremove -y
	
	sudo apt purge firefox
	sudo rm -Rf /etc/firefox/
	sudo rm -Rf /usr/lib/firefox*
	sudo snap remove firefox

	sudo apt install ubuntu-restricted-extras
}

