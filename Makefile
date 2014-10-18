symlinks:
	@echo "..."$(CURDIR)
	@ln -sf $(CURDIR)/dotfiles/oh-my-zsh/.zshrc ~/.zshrc
	@ln -sf $(CURDIR)/vim/.vimrc ~/.vimrc
	@ln -sf $(CURDIR)/git/.gitconfig ~/.gitconfig
	# TODO iterm
