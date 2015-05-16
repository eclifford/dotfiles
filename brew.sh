#!/bin/sh

# Ask and preserve sudo
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

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

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# brew install helper function
function install() {
  brew install "${@}" 2> /dev/null
}

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.

install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
install findutils

# Install ZSH
install zsh

# Change shell to ZSH
chsh -s /bin/zsh

# Install wget with IRI support
install wget --enable-iri

# Install NeoVim
brew tap neovim/neovim
install --HEAD neovim --override-system-vi

# Grep
brew tap homebrew/dupes
install homebrew/dupes/grep

# Install other binaries
install ack
install git
install node
install python
install rbenv
install ruby-build
install phantomjs
install tmux
install maven
install autojump
install the_silver_searcher

# TMUX copy and paste with OSX
install reattach-to-user-namespace

# Remove oudated versions from the cellar
brew cleanup
