# George's dotfiles

My configuration files for shells & stuff 🐚

<!-- Insert image of shell -->

## My System

* **Linux Distribution**: Ubuntu on WSL 2
* **Terminal**: Windows Terminal
* **Shell**: Bash
* **Text Editor**: Neovim

## Installation

Note: Stock configuration files in the `$home` directory may prevent checking out the repo. Remove them from `$HOME` by either moving them to a backup folder or deleting them.

### Step 1: Clone the repo

Follow either the [manual](https://github.com/geyokoyama/dotfiles#manual) or the [script](https://github.com/geyokoyama/dotfiles#script) instructions.

#### Manual

1. Clone the repo to $HOME. `git clone --bare git@github.com:geyokoyama/dotfiles.git $HOME/.cfg`
2. Set alias for the _.cfg_ dotfiles repo for easy access. `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
3. Checkout the repo. `config checkout`
4. Ignore untracked files. `config config --local status.showUntrackedFiles no`
5. Set origin to the remote repo because bare repos don't do so automatically. `config push --set-upstream origin main`

#### Script

1. Run the following script to install. `curl -#L https://raw.githubusercontent.com/geyokoyama/dotfiles/main/scripts/setup.sh | /usr/bin/bash`

### Step 2: Install other stuff
* [Node Version Manager](https://github.com/nvm-sh/nvm#install--update-script)
* [Starship Shell Prompt](https://starship.rs/guide/#%F0%9F%9A%80-installation)
* [fzf](https://github.com/junegunn/fzf#using-git)
* [Neovim Text Editor](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu) - [configs](https://github.com/geyokoyama/dotfiles/tree/main/.config/nvim)

## Helpful Links

* [Dotfiles: Best Way to Store in a Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles)
* [The best way to store your dotfiles: A bare Git repository **EXPLAINED**](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)
* [Dotfiles - How to Configure your Shell (intro)](https://dev.to/michaelcurrin/dotfiles-to-make-your-shell-awesome-1pa1)
* [Build your first Neovim configuration in lua](https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/)
* [Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
* [Make Your dotfiles Portable With Git and a Simple Bash Script](https://freddiecarthy.com/blog/make-your-dotfiles-portable-with-git-and-a-simple-bash-script)
