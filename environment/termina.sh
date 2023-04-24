# power line fonts and fira code
sudo apt install fonts-powerline
sudo apt install fonts-firacode

# Fish
sudo apt-get install fish

# setuo fish as default shell
chsh -s /usr/bin/fish

# Starship
curl -sS https://starship.rs/install.sh | sh

# Add the following to the end of ~/.config/fish/config.fish
starship init fish | source

# tmux
sudo apt install tmux

