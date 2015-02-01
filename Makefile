.PHONY: brew git zsh python vim osx jshint iterm r
all: brew git zsh python vim osx jshint iterm r
	@echo "Done."
brew:
	@sh brew/install.sh
packages:
	@sh brew/install_packages.sh
git:
	@sh git/configs.sh
zsh:
	@sh zsh/install.sh
python:
	@sh python/install.sh
vim:
	@sh vim/install.sh
osx:
	@sh osx/defaults.sh
jshint:
	@sh jshint/install.sh
iterm:
	@sh iterm/configs.sh
r:
	@Rscript r/packages.r
