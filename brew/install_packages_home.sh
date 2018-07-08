#!/usr/bin/env bash

# Inspired in https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh

echo "Installing brew packages..."

# Install GNU core utilities (those that come with OS X have a different confusing API).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install GNU `make`, overwriting the built-in `make`.
brew install homebrew/dupes/make --with-default-namesz

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Essentials
brew install git wget

# Python
brew install python3

# SSH
brew install ssh-copy-id

# Other
brew install pandoc

###
# Casks
###

# TODO redo

brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Dev tools
brew cask install atom macvim iterm2
brew cask install virtualbox
brew cask install font-dejavu-sans-mono-for-powerline

# Browsers
brew cask install firefox google-chrome

# (Free)? entertainment
brew cask install spotify vuze simple-comic vlc

# Communication
brew cask install slack skype telegram

# Other
brew cask install android-file-transfer caffeine dropbox evernote spectacle flux flycut

# Install developer friendly quick look plugins;
#  see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

###
# Packages depending on casks
###

# Java libs (Java casks required)
brew install maven
brew install scala sbt gradle
brew install hadoop apache-spark hive


###
# Cleanup
###

# Remove outdated versions from the cellar.
brew cleanup

echo "..Done"
