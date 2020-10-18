#!/bin/sh

###
# Aliases and common envvars
###

# Load shell-agnostic profiles
cp -f .aliases $HOME
cp -f .vars $HOME

# Load custom ZSH plugins

## Fish-like autosuggestions zsh

#git clone https://github.com/zsh-users/zsh-autosuggestions \
#  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Load theme and .zshrc
cp -f zsh/icaro.zsh-theme $HOME/.oh-my-zsh/themes
cp -f zsh/.zshrc $HOME

#echo $PATH