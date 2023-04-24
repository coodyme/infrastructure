#!/bin/bash

git_install() {
	echo 'GIT INSTALL'
	
	sudo add-apt-repository ppa:git-core/ppa
	sudo apt update
	sudo apt-get install git -y
	
	git --version
}

git_setup() {
	echo 'GIT SETUP'

	git config --global user.name 'Augusto Brito'
	git config --global user.email 'augustobritodev@icloud.com'

	git config --list
}
