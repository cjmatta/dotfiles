# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/zsh-custom
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gitmonkey"

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

alias projects="cd ~/GoogleDrive/Projects"

export GOPATH=~/Dropbox/Projects/go

WORKON_HOME=~/.venvs
source ~/.venvs/default/bin/activate

export SCALA_HOME=/usr/local/Cellar/scala
# Scala play
export PATH=$PATH:/Users/chris/Dropbox/Projects/scala/play

# For HIVE ODBC
# export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/mapr/hiveodbc/lib/universal


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

replace_hosts_entry() {
    CLUSTER=$1
    ssh sejump -q "ansible-playbook -i ~/clusters/${CLUSTER} ~/mapr-ansible-roles/playbooks/print_cluster_info.yml"
    HOSTS_ENTRY=$(ssh sejump "cat ~/mapr-ansible-roles/playbooks/hosts_entry" | sed -e 's/^[ \d ]*//')

    # delete old entry
    sudo sed -i -e '/^# '"${CLUSTER}"'/,/^\s*$/d' /etc/hosts

    # add new entry
    cp /etc/hosts /tmp/etc_hosts
    printf "%s\n%s" "# $CLUSTER" $HOSTS_ENTRY >> /tmp/etc_hosts
    echo "" >> /tmp/etc_hosts
    sudo mv /tmp/etc_hosts /etc/hosts
}

cluster_on() {
    CLUSTER=$1
    ssh sejump "source ~/mapr-ansible-roles/aws/credentials.sh && ansible-playbook --extra-vars='ec2_region=us-east-1' -i ~/clusters/${CLUSTER} ~/mapr-ansible-roles/playbooks/aws_turnon.yml"
}

cluster_off() {
    CLUSTER=$1
    ssh sejump "source ~/mapr-ansible-roles/aws/credentials.sh && ansible-playbook --extra-vars='ec2_region=us-east-1' -i ~/clusters/${CLUSTER} ~/mapr-ansible-roles/playbooks/aws_turnoff.yml"


}

export JAVA_HOME=$(/usr/libexec/java_home)
alias secluster="ssh -t sen10 'tmux a -d || tmux new'"
alias sejump="mosh sejump -- 'tmux a -d || tmux new'"

alias 401cluster_off='cluster_off 401_cluster.hosts'
alias 401cluster_on='cluster_on 401_cluster.hosts'

alias comcastcluster_off='cluster_off comcast_spotlight'
alias comcastcluster_on='cluster_on comcast_spotlight'

alias drill='/opt/drill/bin/sqlline -u jdbc:drill:zk=local'

alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
setJdk8
