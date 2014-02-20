#!/usr/bin/env bash

#
# Create all the symlinks!
#
function doIt() {
	ln -sf .vim ~/.vim
	ln -s .oh-my-zsh ~/.oh-my-zsh
	ln -s .vimrc ~/.vimrc
	ln -s .vimrc.bundles ~/.vimrc.bundles
	ln -s .zshrc ~/.zshrc
	ln -s .wgetrc ~/.wgetrc
	ln -s .tmux.conf ~/.tmux.conf
	ln -s .gitignore_global ~/.gitignore_global
	ln -s .gitconfig ~/.gitconfig
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
        doIt
else
        read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
                doIt
        fi
fi

#
# Check if Homebrew is installed
#
if test ! $(which brew)
then
  # Install Homebrew
  # https://github.com/mxcl/homebrew/wiki/installation
  echo 'installing homebrew'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

source ~/.zshrc

#
# Install Brew Formulas
#
echo 'installing homebrew formulas'
brew bundle 

#
# Install Brew Casks
#
echo 'installing homebrew casks'
source .cask

#
# Install OSX Tweaks
# 
echo 'installing osx tweaks'
source .osx

#
# Install Powerline
#
echo 'installing powerline'
pip install git+git://github.com/Lokaltog/powerline
pip install psutil

#
# Install VIM Bundles
#
echo 'installing vundle bundles(vim)'
vim +BundleInstall +qall

#
# Install Grunt CLI
#
npm install -g grunt-cli 

#
# Install Bundler
#
echo 'install bundler'
gem update --system
gem install bundler