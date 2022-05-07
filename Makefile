.PHONY: all
all:bash tmux vim

.PHONY: bash
bash:
	ln -vsf ${PWD}/.bash_profile ${HOME}/.bash_profile
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc

.PHONY: tmux
tmux:
	ln -vsf ${PWD}/.tmux.conf ${HOME}/.tmux.conf

.PHONY: vim
vim:	
	test -L ${HOME}/.vim || rm -rf ${HOME}/.vim
	ln -vsfn ${PWD}/.vim ${HOME}/.vim
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc
	mkdir -p ~/.cache/dein
	cd ~/.cache/dein && curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
	cd ~/.cache/dein &&	sh ./installer.sh ~/.cache/dein
