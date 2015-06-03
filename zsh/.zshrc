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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew pip python virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/icaro.medeiros/.config/fish/bin:/Users/icaro.medeiros/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

## Git

alias gs="git status"
alias GS="gs" # fuck off, ghost script
alias "gsub"="git submodule update"
export GIT_MERGE_AUTOEDIT=no

## Java

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home"

## Ruby

eval "$(rbenv init -)"

## Common shortcuts

alias ls="ls -G"
alias ll="ls -ltrGah"
alias ..="cd .."

## Do not correct

alias mvim="nocorrect mvim"
alias make="nocorrect make"

## Avoiding "too many open files" error

ulimit -n 65536
ulimit -u 2048

## Brew

export HOMEBREW_GITHUB_API_TOKEN=fbe5737441e5a138cc9f9e3d55d50bf52f3a9336

## R
# Disables r built-in command
disable r
export RSTUDIO_WHICH_R=/usr/local/bin/r
alias rscript="Rscript"

## Virtuoso

export VIRTUOSO_HOME="/usr/local/Cellar/virtuoso616/6.1.6/var/lib/virtuoso/db"

## Aliases

alias virtuoso-start="cd $VIRTUOSO_HOME; virtuoso-t +foreground"
alias mysql-start="mysql.server start"
alias thumbor-start="thumbor -l info -k ~/workspace/app-semantica-sample/app-semantica-site/thumbor.key"
alias solr-start="cd ~/workspace/solr-app-semantica; ./start-solr.sh"
alias uatu-start="cd ~/workspace/uatu; make run"

alias tsr="tsuru"
