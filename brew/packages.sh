  #!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

echo "Installing brew packages..."

###
# Install GNU packages
# Inspired in https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
###

# Core utilities (those that come with MacOS have a different API).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# Check `zsh/.zshrc`
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
# TODO check path as --with-default-names is not supported anymore
brew install gnu-sed

# Install GNU grep
brew install grep

# Rust-rewritten CLI
brew install bat fd procs dust ripgrep tealdeer fzf exa

###
# Other system packages to override
#  (prevents outdated CLI or Apple tools)
###

# TODO fix path to prefer brewed vim
brew install vim

brew install openssh

brew install curl

##
# Essentials
##

# Download tools
brew install git wget axel

# Python 
#  In python/python.sh & python/packages.sh

###
# Azure
###

brew install azure-cli

# Needed for Azure DevOps
brew install git-credential-manager

brew cask install microsoft-azure-storage-explorer

# NPM-based Azure tools
brew install npm
npm install -g azure-functions-core-tools
#npm install -g azurite

# Scala
brew cask install homebrew/cask-versions/adoptopenjdk8
brew install scala@2.11

# FIXME sbt depends on gcc, but do I really use it?

# Other
brew install gollum pandoc howdoi

###
# Casks
###

# There is no more need for `brew tap caskroom/cask`,
#  first cask install taps it

# Drivers
brew tap homebrew/cask-drivers
brew cask install logitech-options

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-dejavu-sans-mono-for-powerline

# Dev tools
brew cask install macvim visual-studio-code iterm2 meld
brew cask install docker
brew install httpie

# Browsers
brew cask install brave-browser google-chrome firefox 

# (Free)? entertainment and Civilization
brew cask install spotify simple-comic vlc steam

# Communication
brew cask install skype telegram

# Backup
brew cask install dropbox google-photos-backup-and-sync

# Other
brew cask install android-file-transfer caffeine notable spectacle

# Install developer friendly quick look plugins;
#  see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json \
                  qlimagesize webpquicklook suspicious-package \
                  quicklookase qlvideo quicklook-csv jupyter-notebook-ql

###
# Cleanup
###

# Remove outdated versions from the cellar.
brew cleanup

echo "..Done"
