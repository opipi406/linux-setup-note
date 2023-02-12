# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
export PS1='\h \[\033[01;33m\]\w\[\033[01;31m\]$(__git_ps1 " (%s)")\[\e[m\] \$ '

PATH=$PATH:$HOME/bin:$HOME/usr/local/bin
export PATH