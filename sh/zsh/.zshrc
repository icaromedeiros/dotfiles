# Path to your oh-my-zsh installation.
export ZSH="/Users/icaro/.oh-my-zsh"

ZSH_THEME="icaro"

DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=30
COMPLETION_WAITING_DOTS="true"

# History
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# cp: copy with progress bar
plugins=(
  git zsh-autosuggestions pyenv python
)

source $ZSH/oh-my-zsh.sh

# Load shell-agnostic aliases and vars
source $HOME/.aliases
source $HOME/.vars

###
# MacOS (brew) specific
###

# GNU utils take precedence
UTILS_PATH="/usr/local/opt/coreutils/libexec/gnubin"
FIND_PATH="/usr/local/opt/findutils/libexec/gnubin"
GREP_PATH="/usr/local/opt/grep/libexec/gnubin"
GNU_PATHS="${UTILS_PATH}:${FIND_PATH}:${GREP_PATHS}"

# Brewed curl
CURL_PATH="/usr/local/opt/curl/bin"

# Pyenv path
PYTHON_PATH=$(pyenv root)/shims

PATH="${GNU_PATHS}:${PYTHON_PATH}:${CURL_PATH}:${PATH}"

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Fix colors and use GNU ls
alias ls="gls --color=always"

export PATH="/usr/local/opt/scala@2.11/bin:$PATH"
