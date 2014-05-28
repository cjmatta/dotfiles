# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
alias projects='cd ~/Dropbox/Projects'
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### MAMP php
export PATH=/Applications/MAMP/bin/php/php5.3.6/bin:$PATH

[[ -s /Users/chris/.nvm/nvm.sh ]] && . /Users/chris/.nvm/nvm.sh # This loads NVM

# Add yeomen - yeoman for express to PATH
PATH=$PATH:/Users/chris/Dropbox/Projects/javascript/yeoman/yeoman-custom/cli/bin
#
alias ssh-peep="ssh -t chris@peep.local 'tmux attach || tmux new'"
alias ssh-pi="ssh pi@192.168.1.33"
alias ssh-pi2="ssh -t pi@192.168.1.44 'tmux attach || tmux new'"

export GOPATH=~/Dropbox/Projects/go
WORKON_HOME=~/.venvs
source /usr/local/bin/virtualenvwrapper.sh
export SCALA_HOME=/usr/local/Cellar/scala

export PATH=$PATH:/Users/chris/Dropbox/Projects/scala/play
