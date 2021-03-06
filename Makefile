all:
	@echo 'Initializing'
	@git submodule init
	@git submodule update
	@echo 'Setting up links'
	@ln -sf $(CURDIR)/zsh/zshrc ~/.zshrc
	@ln -sf $(CURDIR)/vimperator/vimperatorrc ~/.vimperatorrc
	@rm -rf ~/.vim
	@ln -nsf $(CURDIR)/vim/vim ~/.vim
	@ln -sf $(CURDIR)/vim/vimrc ~/.vimrc
	@ln -sf $(CURDIR)/tmux/tmux.conf ~/.tmux.conf
	@ln -nsf $(CURDIR)/ipython/ ~/.ipython
	@ln -sf $(CURDIR)/gitignore ~/.gitignore
	@git config --global core.excludesfile '~/.gitignore'
	@echo 'Installing vim plugins'
	@vim +NeoBundleInstall +qall

tweaks: 
	@chmod 755 osx/osx_tweaks.sh
	@./osx/osx_tweaks.sh
