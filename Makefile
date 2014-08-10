symlinks:
	@echo "..."$(CURDIR)
	@ln -sf $(CURDIR)/vim/.vimrc ~/.vimrc
	@ln -sf $(CURDIR)/zsh/.zshrc ~/.zshrc
	@ln -sf $(CURDIR)/git/.gitconfig ~/.gitconfig
	# TODO iterm
