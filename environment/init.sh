#!/bin/bash

. apps/curl.sh
. apps/git.sh
. apps/browser.sh
. apps/termius.sh

. clis/gh.sh
. clis/aws.sh
. clis/cloudflare.sh
. clis/railway.sh
. clis/terraform.sh

. system/setup.sh
. system/ssh.sh

init() {
	options=("Apps" "CLIs" "Dotfiles" "System" "Quit")
	
	while true; do
			echo "----------------------------------------------------"
			echo "Select an option:"
			echo "----------------------------------------------------"
			
		  for i in "${!options[@]}"; do
		      echo "$((i+1)). ${options[$i]}"
		  done
		  read -rp "Enter your choice: " choice

		  if (( choice < 1 || choice > ${#options[@]} )); then
		      echo "Invalid choice. Please try again."
		  elif [ "${options[choice-1]}" == "Quit" ]; then
		      echo "Goodbye!"
		      exit 0
		  else
		  		selected=${options[choice-1]}
		  		
		      echo "You selected: ${selected}"
		      
		      case ${choice} in 
					1)
						#curl_install
						#git_install
						#git_setup
						#browser_install
						#browser_setup
						#termius_install
						#termius_setup
						;;
					2)
						#gh_install
						#gh_setup
						#aws_install
						#gh_setup
						#cloudflare_install
						#cloudflare_setup
						#terraform_install
						#terraform_setup
						#railway_install
						#railway_setup
						;;
					3) 
						echo "dot files"
						;;
					4)
						#system_setup
						#ssh_setup
						;;
					*) 
						echo "other"
						;;
					esac
		  fi
	done
}

init

