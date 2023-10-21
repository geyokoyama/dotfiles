#!/bin/sh

DIR=$HOME/.cfg
LOG=$HOME/dotfile_install.log
GITHUB_USER=geyokoyama
GITHUB_REPO=dotfiles

_process() {
  echo "$(date) PROCESSING: $@" >> $LOG
  printf "$(tput setaf 6) %s...$(tput sgr0)\n" "$@"
}

_success() {
  local message=$1
  printf "%s✓ Success:%s\n" "$(tput setaf 2)" "$(tput sgr0) $message"
}

_warning() {
  echo "$(date) WARNING:  $@" >> $LOG
  printf "$(tput setaf 3)⚠ Warning:$(tput sgr0) %s!\n" "$@"
}

_error() {
  echo "$(date) ERROR:  $@" >> $LOG
  printf "$(tput setaf 1)⊘ Error:$(tput sgr0) %s. Aborting!\n" "$@"
  exit 1
}

install_git() {
  _process "-> Installing git"
}

install_starship() {
  _process "-> Installing startship"
  curl -sS https://starship.rs/install.sh | sh
}

Install_node() {
  _process "-> Installing node"
}

Install_rbenv() {
  _process "-> Installing ruby"
}

install_neovim() {
  _process "-> Installing Neovim"
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt-get update
  sudo apt-get install neovim
}

download_dotfiles() {
  _process "-> Cloning detfiles as a bare repo to ${DIR}"
  git clone --bare git@github.com:geyokoyama/dotfiles.git $HOME/.cfg

  _process "-> Setting up repo access under alias \"config\""
  config() {
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
  }

  _process "-> Backing up existing dotfiles if they exist"
  config checkout
  if [ $? = 0 ]; then
    _success "Checked out config";
  else
    _warning "Backing up pre-existing dotfiles"
    mkdir -p .dotfiles_bak
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles_bak/{}
  fi;

  _process "-> Checking out repo files to $HOME directory"
  config checkout

  _process "-> Configure repo to not show untracked files"
  config config --local status.showUntrackedFiles no

  _process "-> Please source .bashrc \`source $HOME/.bashrc\` or restart the shell"
}

install() {
  download_dotfiles
  # install_git
  # install_starship
  # Install_rbenv
  # install_neovim
}

install
