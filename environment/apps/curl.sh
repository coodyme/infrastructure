#!/bin/bash

curl_install() {
	echo 'CURL INSTALL'
	sudo apt install curl
	
	curl --version
}

