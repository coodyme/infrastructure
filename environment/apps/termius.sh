#!/bin/bash

termius_install() {
	echo 'Termius INSTALL'
	
	wget https://www.termius.com/download/linux/Termius.deb ./tmp/Termius.deb \
	&& sudo apt-get install ./tmp/Termius.deb \
	&& sudo rm ./tmp/Termius.dev
}

termius_setup() {
	
}

