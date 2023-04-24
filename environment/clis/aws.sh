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

