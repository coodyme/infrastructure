# Install Cockpit without recommended packages
apt install cockpit --no-install-recommends

# If any error occurend when installing cockpit, run the following command (then, run the above command again):
apt-get update --fix-missing

# Allow root to login
nano /etc/cockpit/disallowed-users
