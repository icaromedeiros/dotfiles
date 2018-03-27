# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="icaro"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Uses zsh history w/o the mindfuckness
alias history="fc -il 1"

# Uses zmv to enable intelligent renaming such as mmv *.txt *.md
autoload -U zmv
alias mmv='noglob zmv -W'

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python web-search)
# Excluded but probably useful: docker

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# Preferred editor
export EDITOR='vim'


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

## Git

alias gs="git status"
alias GS="gs" # fuck off, ghost script
alias "gsub"="git submodule update"
export GIT_MERGE_AUTOEDIT=no

## Data science tools

alias jup='jupyter notebook'

## Common shortcuts

alias ls="ls --color=tty"
alias ll="ls -ltrGah"
alias LS="ll" # Fuck Caps Lock
alias ..="cd .."
alias grp="grep -rins -C 3"
alias cp="cp -rvf"