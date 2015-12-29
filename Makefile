.PHONY: brew git zsh python vim osx jshint iterm r

# make all excludes jshint and r (not used for now)
all: osx brew packages git zsh python vim iterm
	@echo "[dotfiles-make] ALL done."
	@echo "Follow up: Read iterm/open_in_finder"
osx:
	@echo "[dotfiles-make] Updating OS X and installing Xcode ..."
	@sh osx/preps.sh
	@echo "[dotfiles-make] Applying OS X defaults ..."
	@sh osx/defaults.sh
brew:
	@echo "[dotfiles-make] Installing brew ..."
	@sh brew/install.sh
packages:
	@echo "[dotfiles-make] Installing brew packages ..."
	@sh brew/install_packages.sh
git:
	@echo "[dotfiles-make] Installing git configs ..."
	@sh git/configs.sh
zsh:
	@echo "[dotfiles-make] Installing ZSH and .zshrc ..."
	@sh zsh/install.sh
python:
	@echo "[dotfiles-make] Installing python and global packages ..."
	@sh python/install.sh
vim:
	@echo "[dotfiles-make] Installing vim and .vimrc ..."
	@sh vim/install.sh
iterm:
	@echo "[dotfiles-make] Installing iTerm configs ..."
	@sh iterm/configs.sh
jshint:
	@echo "[dotfiles-make] Installing jshint and .jshintrc ..."
	@sh jshint/install.sh
r:
	@echo "[dotfiles-make] Installing R packages ..."
	@Rscript r/packages.r
