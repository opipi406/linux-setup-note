# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Aliases
alias duu='du -hd 1 | sort -hr'
alias py='python'
alias d='docker'
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcr='docker compose restart'
alias dcx='docker compose exec'
alias docker-fresh='docker rm -f `docker ps -a -q`'
alias git-fresh='git branch --merged | grep -v "\*|develop|main|master"|xargs git branch -d'

# User specific environment and startup programs
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true      # *:unstaged, +:staged
#GIT_PS1_SHOWUNTRACKEDFILES=true  # %:untracked
#GIT_PS1_SHOWSTASHSTATE=true      # $:stashed
#GIT_PS1_SHOWUPSTREAM=auto        # >:ahead, <:behind
export PS1='\h \[\033[01;33m\]\w\[\033[01;31m\]$(__git_ps1 " (%s)")\[\e[m\] \$ '

# Setting path
#PATH=$HOME/.nodebrew/current/bin:$PATH
PATH=$HOME/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
