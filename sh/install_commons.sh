#!/bin/sh

###
# Aliases and common envvars
###

# Load shell-agnostic profiles
cp -f .aliases $HOME
cp -f .vars $HOME

# Load theme and .zshrc
cp -f zsh/icaro.zsh-theme $HOME/.oh-my-zsh/themes
cp -f zsh/.zshrc $HOME