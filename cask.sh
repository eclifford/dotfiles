#!/bin/sh

# Ask and preserve sudo
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install cask
brew tap phinze/homebrew-cask
brew install brew-cask
brew tap caskroom/versions

function installcask() {
  brew cask install "${@}" 2> /dev/null
}

# java
installcask java6

# comm
installcask hipchat
installcask slack

# browsers
installcask google-chrome
installcask google-chrome-canary
installcask firefox 

# dev
installcask iterm2-nightly
installcask transmit
installcask tower
installcask dash
installcask vagrant

# apps
installcask spotify
installcask cleanmymac
installcask kindle

# utils
installcask alfred
installcask spectacle
installcask seil
installcask keyremap4macbook
installcask dropbox
installcask imagealpha
installcask imageoptim
installcask the-unarchiver
installcask transmission
installcask vlc
installcask anki
installcask charles
installcask cyberduck
installcask google-drive

# fonts (https://github.com/caskroom/homebrew-fonts/tree/master/Casks)
brew tap caskroom/fonts
brew cask install font-sauce-code-powerline

brew cleanup
