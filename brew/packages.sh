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
brew install gnu-sed --with-default-names

# Install GNU grep
brew install grep

###
# Other system packages to override
#  (prevents outdated CLI tools)
###

brew install vim --override-system-vi

brew install openssh
brew install ssh-copy-id

brew install curl

##
# Essentials
##

# Download tools
brew install git wget axel

# Python
brew install python3

# Other
brew install gollum pandoc

###
# Casks
###

# There is no more need for `brew tap caskroom/cask`,
#  first cask install taps it

# Drivers
brew tap homebrew/cask-drivers
brew cask install logitech-options

# Fonts
brew tap caskroom/fonts
brew cask install font-dejavu-sans-mono-for-powerline

# Dev tools
brew cask install atom macvim iterm2 meld
brew cask install virtualbox docker

# Browsers
brew cask install firefox google-chrome

# (Free)? entertainment and Civilization
brew cask install spotify vuze simple-comic vlc steam

# Communication
brew cask install slack skype telegram

# Other
brew cask install android-file-transfer caffeine dropbox evernote spectacle flux flycut

# Install developer friendly quick look plugins;
#  see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo quicklook-csv

###
# Cleanup
###

# Remove outdated versions from the cellar.
brew cleanup

echo "..Done"
