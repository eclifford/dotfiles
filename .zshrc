# Add `~/bin` to the `$PATH`
export PATH="$HOME/local/bin:$HOME/.rbenv/bin:$HOME/bin:$PATH";

# ENV variables
export P4PORT=ssl:perforce.savagebeast.com:1666
export P4CLIENT=eclifford-laptop
export P4EDITOR=nvim
export PGDATA=/Users/${USER}/local/postgres/data
export VM_HOSTNAME=localhost
export VM_ROOT=/Users/eclifford/vm_localhost

# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"
plugins=(git git-extras github autojump per-directory-history brew npm osx zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# alises
alias vim="nvim"
alias v="nvim"
alias s="source ~/.zshrc"
alias readlink="greadlink"

# Make it easy to start and stop postgres
alias startpg='pg_ctl -D /Users/${USER}/local/postgres/data -l logfile start'
alias stoppg='pg_ctl -D /Users/${USER}/local/postgres/data -l logfile stop'
alias statuspg='pg_ctl status'

# RBENV
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# DOCKER
# eval "$(boot2docker shellinit)"

# TMUX
# Disable flow control
stty -ixon -ixoff
export ZSH_TMUX_AUTOSTART=true
