# Path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"

# oh-my-zsh plugins
plugins=(git git-extras github autojump per-directory-history brew npm osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Path
export PATH=$HOME/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Disable flow control
stty -ixon -ixoff

ulimit -n 9999

export ZSH_TMUX_AUTOSTART=true
