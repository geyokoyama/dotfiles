#!/bin/sh
git clone --bare git@github.com:geyokoyama/dotfiles.git $HOME/.cfg
config() {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
config checkout
config config --local status.showUntrackedFiles no
config push --set-upstream origin main
echo "Restart your shell or run \`source $HOME/.bashrc\` to see changes"
