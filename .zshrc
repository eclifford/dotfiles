# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"
plugins=(git git-extras github autojump per-directory-history brew npm osx zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# alises
alias vim="nvim"
alias v="nvim"

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# TMUX
# Disable flow control
stty -ixon -ixoff
export ZSH_TMUX_AUTOSTART=true
