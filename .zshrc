# Path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"

# oh-my-zsh plugins
plugins=(git git-extras github autojump per-directory-history brew npm osx tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# Path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin

# Powerline
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# RBENV
# export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Disable flow control
stty -ixon -ixoff

ulimit -n 1024

# export ZSH_TMUX_AUTOSTART=true
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"
