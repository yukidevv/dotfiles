DOT_FILES = .bash_profile .bashrc .tmux.conf .vimrc .xmobarrc .Xresources .xmonad bin

.PHONY: all
all:bash tmux vim xmonad

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

.PHONY: xmonad 
xmonad:
	ln -vsf ${PWD}/.xmobarrc ${HOME}/.xmobarrc
	ln -vsf ${PWD}/.Xresources ${HOME}/.Xresources
	test -L ${HOME}/.xmonad || rm -rf ${HOME}/.xmonad
	ln -vsfn ${PWD}/.xmonad ${HOME}/.xmonad
	test -L ${HOME}/bin || rm -rf ${HOME}/bin
	ln -vsfn ${PWD}/bin ${HOME}/bin

clean:$(foreach f, $(DOT_FILES), unlink-dot-file-$(f))

list:
	cd brew && . ./dump.sh

unlink-dot-file-%: %
	echo "Remove symlink $(HOME)/$<"
	unlink $(HOME)/$<
