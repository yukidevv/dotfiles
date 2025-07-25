DOT_FILES_linux = .bash_profile .bashrc .tmux.conf .vimrc .Xresources

.DEFAULT_GOAL = h
h: ## help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
.PHONY: h

l:bash_linux tmux vim x ## linux

.PHONY: bash_linux
bash_linux:
	ln -vsf ${PWD}/.bash_profile ${HOME}/.bash_profile
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc

.PHONY: tmux
tmux:
	ln -vsf ${PWD}/.tmux.conf ${HOME}/.tmux.conf

.PHONY: vim
vim:
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc

.PHONY: x 
x:
	ln -vsf ${PWD}/.Xresources ${HOME}/.Xresources

c: $(foreach f, $(DOT_FILES_linux), unlink-dot-file-$(f)) ## clean
unlink-dot-file-%: %
	echo "Remove symlink $(HOME)/$<"
	unlink $(HOME)/$<
