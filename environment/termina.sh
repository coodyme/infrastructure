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



# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3

# Add the following to ~/.config/fish/config.fish:
source ~/.asdf/asdf.fish

mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# plugins asdf
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf plugin-add python