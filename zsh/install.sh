#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing oh my zsh..."
curl -L http://install.ohmyz.sh | sh
echo "Installing .zshrc"
ln -sf $DIR/.zshrc ~/.zshrc
echo "Installing zsh theme"
cp $DIR/icaro.zsh-theme ~/.oh-my-zsh/themes/icaro.zsh-theme
echo "Done."
