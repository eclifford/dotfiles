# Path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# oh-my-zsh plugins
plugins=(git git-extras github autojump brew npm osx)

source $ZSH/oh-my-zsh.sh

# Path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin

# Powerline
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# RBENV
eval "$(rbenv init -)"