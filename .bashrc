#-------#
# Alias #
#-------#
alias ..='cd ..'
alias ll='ls -al'
alias pd='pwd'
alias hy='history'
alias lsfiles="find . -type f -print0 | xargs -0 -n 100 stat -f"%m %Sm %N" | sort -rn|awk '{$1="";print}'"

#--------#
# Export #
#--------#

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#----#
# UX #
#----#

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ---o \1 /'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\e[0;31m\]\$(parse_git_branch)\[\033[00m\] $ "