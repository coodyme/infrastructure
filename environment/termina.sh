# Install Fonts
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip

place in ./fonts

 fc-cache -fv
 

# Fish
sudo apt-get install fish

# setuo fish as default shell
chsh -s /usr/bin/fish

# Starship
curl -sS https://starship.rs/install.sh | sh


# Add the following to the end of ~/.config/fish/config.fish
starship init fish | source

# tmux
sudo apt-get install tmux

# ~/.tmux.conf
tmux source ~/.tmux/tmux.conf

#reload
tmux source-file ~/.tmux.conf

# Install plugin
.tmux/plugins/tpm/scripts/install_plugins.sh

# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3

# Add the following to ~/.config/fish/config.fish:
source ~/.asdf/asdf.fish

mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# plugins asdf
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf plugin-add python

# packages
npm install -g yarn
npm install -g eas-cli
npm install -g gitmoji-cli

# set default terminal
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator


# minimize on click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# install media codecs
sudo apt install ubuntu-restricted-extras

#Unlock advanced window tiling
sudo apt install gnome-shell-extension-ubuntu-tiling-assistant