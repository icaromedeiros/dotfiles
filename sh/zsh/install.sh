#!/bin/sh

###
# Oh-my-Zsh bootstrap
###

# WARNING Idempotence here, it will remove previous configs
mv -f $HOME/.oh-my-zsh $HOME/.old-my-zsh

# Such security!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Fish-like autosuggestions zsh

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
