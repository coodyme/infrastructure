#!/bin/bash

gh_install() {
	echo 'GitHub CLI INSTALL'
	type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
	&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
}

gh_setup() {
	echo 'GitHub CLI SETUP'
	gh auth login
	
	sudo gh extension install dlvhdr/gh-dash 
	sudo gh extension install thatvegandev/gh-eco 
	sudo gh extension install gennaro-tedesco/gh-f 
	sudo gh extension install yusukebe/gh-markdown-preview 
	sudo gh extension install meiji163/gh-notify 
	sudo gh extension install seachicken/gh-poi
	sudo gh extension install abdfnx/gh-resto 
	sudo gh extension install gennaro-tedesco/gh-s
}

