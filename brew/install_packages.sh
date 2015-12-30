#!/usr/bin/env bash

# Inspired in https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing brew packages..."

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Essentials
brew install git wget

# Python
brew install python
brew install python3

# Javascript tools and Node
brew install node
brew install jq

# Ruby
brew install rbenv ruby-build

# Java
brew install maven
brew install scala sbt
brew install hadoop apache-spark hive

# Tsuru
#brew tap tsuru/homebrew-tsuru
#brew install tsuru tsuru-admin crane

# R
#brew tap homebrew/science
#brew install Caskroom/cask/xquartz
#brew install r

# Other
brew install pandoc

###
# Casks
###
brew install caskroom/cask/brew-cask

brew tap caskroom/versions

# Dev tools
brew cask install --appdir="/Applications" atom macvim gitx iterm2
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" java eclipse-java java7

# Science, bitch
brew cask install --appdir="/Applications" mactex mendeley-desktop

# Browsers
brew cask install --appdir="/Applications" firefox google-chrome

# (Free)? entertainment
brew cask install --appdir="/Applications" chromecast spotify subtitles vuze simple-comic vlc

# Communication
brew cask install --appdir="/Applications" adium slack skype

# Other
brew cask install --appdir="/Applications" android-file-transfer caffeine dropbox dropbox-encore evernote spectacle flux flycut

###
# Packages depending on casks
###

# Install Docker, which requires virtualbox
brew install docker
brew install docker-machine

# Install developer friendly quick look plugins;
#  see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

###
# Cleanup
###

# Remove outdated versions from the cellar.
brew cleanup

echo "..Done"
