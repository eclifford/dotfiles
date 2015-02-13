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

# export ZSH_TMUX_AUTOSTART=true
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"
export SAUCE_USERNAME="ericgclifford"
export SAUCE_ACCESS_KEY="a0c587e3-82f5-4101-9cde-644db0abd389"

# added by travis gem
[ -f /Users/eclifford/.travis/travis.sh ] && source /Users/eclifford/.travis/travis.sh

# added by travis gem
[ -f /Users/eric.clifford/.travis/travis.sh ] && source /Users/eric.clifford/.travis/travis.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"
export AUDI_BOOTSTRAP_EXPORT_DIR="/Users/eric.clifford/Projects/akqa/audi-cq-ui/src/main/content/jcr_root/etc/designs/audiusa/vendor/bower_components/audi-bootstrap"
