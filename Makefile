.PHONY: vim git jshint
git:
	@echo "Installing .gitconfig"
	@ln -sf $(CURDIR)/git/.gitconfig ~/.gitconfig
	@echo "Done."
iterm:
	@echo "Installing profile for iTerm (please restart iTerm)"
	@cp $(CURDIR)/iterm/com.googlecode.iterm2.plist ~/Library/Preferences
	@echo "Done."
other:
# Disable that stupid "Are you sure you want to open this file?" dialog
	@defaults write com.apple.LaunchServices LSQuarantine -bool NO
	@echo "Done."
brew:
	@echo "Installing brew..."
	@ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	@brew update
# Install brew packages
packages:
	@echo "Installing brew packages..."
	@brew update
	@brew install git python node rbenv ruby-build virtuoso redis activemq gradle
	@brew tap tsuru/homebrew-tsuru
	@brew install tsuru tsuru-admin crane
python:
	@pip install virtualenvwrapper pep8 flake8
zsh:
	@echo "Installing zsh..."
	@curl -L http://install.ohmyz.sh | sh
	@echo "Installing .zshrc"
	@ln -sf $(CURDIR)/oh-my-zsh/.zshrc ~/.zshrc
	@echo "Installing zsh theme"
	@cp $(CURDIR)/oh-my-zsh/icaro.zsh-theme ~/.oh-my-zsh/themes/icaro.zsh-theme
	@echo "Done."
vim:
	@echo "Installing NeoBundle.."
	@curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	@echo "Installing .vimrc"
	@ln -sf $(CURDIR)/vim/.vimrc ~/.vimrc
	@echo "Done."
jshint:
	@echo "Installing JShint"
	@sudo npm install jshint --global
	@ln -s $(CURDIR)/jshint/.jshintrc ~/.jshintrc
