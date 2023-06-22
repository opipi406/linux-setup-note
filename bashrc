# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Aliases
alias la='ls -a'
alias lla='ls -la'
alias cls='clear'
alias duu='du -hd 1 | sort -hr'
alias git-fresh='git branch --merged | grep -v "\*|develop|main|master"|xargs git branch -d'
alias pub='cd ~/unico-unique.com/public_html/'

# User specific environment and startup programs
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true      # *:unstaged, +:staged
export PS1='\h \[\033[01;33m\]\w\[\033[01;31m\]$(__git_ps1 " (%s)")\[\e[m\] \$ '

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/bin:$PATH
# ln -s /opt/php-8.1.12/bin/php $HOME/bin/php
