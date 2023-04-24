#!/bin/bash

railway_install() {
	echo 'Railway CLI INSTALL'
	
	curl -fsSL cli.new | sh

	railway --version
}

railway_setup() {
	echo 'Railway CLI SETUP'
	
	railway login
}

