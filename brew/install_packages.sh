#!/usr/bin/env bash

# Inspired in https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
echo "Updating brew..."
brew update

echo "Installing brew packages..."

# Essentials
brew install git wget

# Python
brew install python

# Node
brew install node

# Ruby
brew install rbenv ruby-build

# Databases
brew install https://raw.githubusercontent.com/icaromedeiros/homebrew-versions/master/virtuoso616.rb
brew install redis

# Java tools
brew install activemq
brew install gradle

# Tsuru
brew tap tsuru/homebrew-tsuru
brew install tsuru tsuru-admin crane

# Remove outdated versions from the cellar.
brew cleanup

# Java/Scala
brew install maven
brew install scala sbt
brew install hadoop apache-spark kafka typesafe-activator
