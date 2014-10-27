# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

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

export PATH=~/bin:/usr/local/bin:$PATH

# Customize to your needs...

alias projects="cd ~/Google\ Drive/Projects"

export GOPATH=~/Dropbox/Projects/go

WORKON_HOME=~/.venvs
source ~/.venvs/default/bin/activate
source ~/.venvs/default/bin/virtualenvwrapper.sh

export SCALA_HOME=/usr/local/Cellar/scala
# Scala play
export PATH=$PATH:/Users/chris/Dropbox/Projects/scala/play

# For HIVE ODBC
# export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/mapr/hiveodbc/lib/universal


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias 311cluster_off="ssh sejump \"source ~/mapr-ansible-roles/aws/credentials.sh && ansible-playbook --extra-vars='ec2_region=us-east-1' -i ~/mapr-ansible-roles/playbooks/cluster.hosts ~/mapr-ansible-roles/playbooks/aws_turnoff.yml\""
alias 311cluster_on="ssh sejump \"source ~/mapr-ansible-roles/aws/credentials.sh && ansible-playbook --extra-vars='ec2_region=us-east-1' -i ~/mapr-ansible-roles/playbooks/cluster.hosts ~/mapr-ansible-roles/playbooks/aws_turnon.yml\""
alias 401cluster_off="ssh sejump \"source ~/mapr-ansible-roles-401/aws/credentials.sh && ansible-playbook --extra-vars='ec2_region=us-east-1' -i ~/mapr-ansible-roles-401/playbooks/cluster.hosts ~/mapr-ansible-roles-401/playbooks/aws_turnoff.yml\""
alias 401cluster_on="ssh sejump \"source ~/mapr-ansible-roles-401/aws/credentials.sh && ansible-playbook --extra-vars='ec2_region=us-east-1' -i ~/mapr-ansible-roles-401/playbooks/cluster.hosts ~/mapr-ansible-roles-401/playbooks/aws_turnon.yml\""
export JAVA_HOME=$(/usr/libexec/java_home)
