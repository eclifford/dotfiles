#!/bin/sh

# Ask and preserve sudo
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#
# Create all the symlinks!
#
function doIt() {
	ln -sf $PWD/.nvim ~/.nvim
	ln -s $PWD/.oh-my-zsh ~/.oh-my-zsh
	ln -s $PWD/.nvimrc ~/.nvimrc
	ln -s $PWD/.zshrc ~/.zshrc
	ln -s $PWD/.wgetrc ~/.wgetrc
	ln -s $PWD/.tmux.conf ~/.tmux.conf
	ln -s $PWD/.gitignore_global ~/.gitignore_global
	ln -s $PWD/.gitconfig ~/.gitconfig
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

# Install Brews
./brew.sh

# Install Casks
./cask.sh

# Install OSX tweaks
./osx.sh

source ~/.zshrc
