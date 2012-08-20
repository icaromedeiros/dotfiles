## Bash frufu

# My preferred bash configs

export BASH_HOME="$HOME/workspace/dotfiles/bash"
export CLICOLOR="auto"
export LSCOLORS="DxGxFxdxCxdxdxhbadExEx"
export GREP_OPTIONS="--color=auto"

## Git

alias gs="git status"

source $BASH_HOME/git-completion.bash

PS1='\u@\h \W$(__git_ps1 " (%s)")\$ '

## Colors

function prompt
{
    local WHITE="\[\033[1;37m\]"
    local GREEN="\[\033[0;32m\]"
    local CYAN="\[\033[0;36m\]"
    local GRAY="\[\033[0;37m\]"
    local BLUE="\[\033[0;34m\]"
    local RED="\[\033[0;31m\]"
    export PS1="${RED}\u${CYAN}@${BLUE}\h${GREEN}:${CYAN}\W${GREEN}"'$(__git_ps1 "(%s)")'"${WHITE}\$ "
}
prompt

## Haskell

export PATH="$HOME/Library/Haskell/bin:$PATH"

## Java

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home"

## Common shortcuts

alias ls="ls -G"
alias ll="ls -ltrGa"
alias ..="cd .."

## Python

source /usr/local/bin/virtualenvwrapper.sh


source ~/workspace/dotfiles/bash/.aliases_pessoais

## Path

export PATH="/opt/local/bin:/opt/local/sbin:$BASH_HOME:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
