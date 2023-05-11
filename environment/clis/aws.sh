#!/bin/bash

aws_install() {
	echo 'AWS CLI INSTALL'

	sudo apt-get install awscli
		
	aws --version
}

aws_setup() {
	echo 'AWS CLI SETUP'
	
	aws configure
}

# Install the Session Manager plugin on Ubuntu
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"

sudo dpkg -i session-manager-plugin.deb

