# Path to your oh-my-zsh installation.
export ZSH="/Users/icaromedeiros/.oh-my-zsh"

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
  git web-search zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# Load shell-agnostic aliases and vars
source $HOME/.aliases
source $HOME/.vars

# MacOS (brew) specific, GNU utils take precedence
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
alias ls="gls --color=always"
