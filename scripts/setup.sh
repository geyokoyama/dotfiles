#!/bin/sh
git clone --bare git@github.com:geyokoyama/dotfiles.git $HOME/.cfg
config() {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
config checkout
config config --local status.showUntrackedFiles no
config push --set-upstream origin main
echo "Restart your shell to see changes"

# Install Zsh
# sudo apt-get install zsh

# Install Starship
# curl -sS https://starship.rs/install.sh | sh

# Install Spaceship
# mkdir -p "$HOME/.config/spaceship"
# git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.config/spaceship"

# Install NVM

# Install rbenv

# Install fzf
# Install fzf-zsh-plugin

# Install zsh-syntax-highlighting
# mkdir -p "$HOME/.config/zsh-syntax-highlighting"
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.config/zsh-syntax-highlighting"

# Install Neovim
<<COMMENT
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
COMMENT
