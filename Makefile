DOT_FILES = .bash_profile .bashrc .tmux.conf .vimrc

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
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc

clean:$(foreach f, $(DOT_FILES), unlink-dot-file-$(f))

list:
	cd brew && . ./dump.sh

unlink-dot-file-%: %
	echo "Remove symlink $(HOME)/$<"
	unlink $(HOME)/$<

