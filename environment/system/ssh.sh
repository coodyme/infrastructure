#!/bin/bash

ssh_setup() {
	echo "SSH SETUP"
	
	ssh-keygen -t rsa -b 4096 -C "augustobritodev@icloud.com" -f "$HOME/.ssh/id_rsa" -q -P ""
	
	eval $(ssh-agent -s)
	ssh-add "$HOME/.ssh/id_rsa"
	
	cat "$HOME/.ssh/id_rsa.pub"
}


