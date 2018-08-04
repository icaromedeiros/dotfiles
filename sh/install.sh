#!/bin/sh


###
# Oh-my-Zsh bootstrap
###

# WARNING Idempotence here, it will remove previous configs
mv ~/.oh-my-zsh ~/.old-my-zsh

# Such security!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp zsh/.zshrc 
