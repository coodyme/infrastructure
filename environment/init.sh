#!/bin/bash

function setup_gh_cli() {
	echo -e ''
}
	
function setup_gh() {
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
	sudo apt-add-repository https://cli.github.com/packages

	sudo apt install gh
}

function setup_git() {
	log $TAG_GIT $INSTALL_MSG
	
	sudo apt install git

	
	echo -e "\n$TAG_GIT $SUCCESS_MSG\n"
	git --version

	echo -e "\n$TAG Setup User and Email\n"

	git config --global user.name $1
	git config --global user.email $2

	git config --list
}

function init_git() {
	input $TAG_GIT "Do you want to continue"
	input_res=$?

	if [ $input_res -eq 1 ] 
	then

		log $TAG_GIT $"Enter your GIT Username: "
		read git_username

		log $TAG_GIT $"Enter your GIT Email: "
		read git_email

		if [ -z $git_username ] || [ -z $git_email ]; then		
			input $TAG_GIT $"Username and Email can't be empty. Do you want to type again"
			try_again_input=$?
			
			if [ $try_again_input -eq 1 ]; then
				init_git
			else
				exit
			fi
			
		else
			setup_git $git_username $git_email
		fi
	else
		log $TAG_GIT $CANCEL_MSG
	fi
}

function curl() {
	init_msg $TAG
	response=$?
	
	if [ $response -eq 1 ]
	then
		echo -e "\n$TAG $INSTALL_MSG\n"
			
		sudo apt install curl
		
		echo -e "\n$TAG $SUCCESS_MSG\n"
		curl --version
	else 
		echo -e "\n$TAG $CANCEL_MSG\n"
	fi
}

function git() {

}

function docker() {

}

function init_os() {
	
	echo -e "\n$TAG_OS $INSTALL_MSG\n"

	sudo apt autoremove
	sudo apt update
	sudo apt upgrade
}

function stop_os() {
	sudo apt-get autoclean -y
	sudo apt-get autoremove -y
}

function init() {


# Define the options
options=("Option 1" "Option 2" "Option 3" "Quit")

# Loop through the options and display the menu
while true; do
    echo "Select an option:"
    for i in "${!options[@]}"; do
        echo "$((i+1)). ${options[$i]}"
    done
    read -rp "Enter your choice: " choice

    # Check if the choice is valid
    if (( choice < 1 || choice > ${#options[@]} )); then
        echo "Invalid choice. Please try again."
    elif [ "${options[choice-1]}" == "Quit" ]; then
        echo "Goodbye!"
        exit 0
    else
        echo "You selected: ${options[choice-1]}"
        # Add your command(s) for the selected option here
        # ...
    fi
done
}

init