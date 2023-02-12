# George's dotfiles

My configuration files for shells & stuff 🐚

<!-- Insert image of shell -->

## My System

* **Linux Distribution**: Ubuntu on WSL 2
* **Terminal**: Windows Terminal
* **Shell**: Bash
* **Text Editor**: Neovim

## Installation
1. Clone the repo to $HOME. `git clone --bare git@github.com:geyokoyama/dotfiles.git $HOME/.cfg`
2. Set alias for the _.cfg_ dotfiles repo for easy access. `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
3. Checkout the repo. `config checkout`
4. Ignore untracked files. `config config --local status.showUntrackedFiles no`

## Helpful Links
* [Dotfiles: Best Way to Store in a Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles)
* [The best way to store your dotfiles: A bare Git repository **EXPLAINED**](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)
* [Dotfiles - How to Configure your Shell (intro)](https://dev.to/michaelcurrin/dotfiles-to-make-your-shell-awesome-1pa1)
