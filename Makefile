DOT_FILES_linux = .bash_profile .bashrc .tmux.conf .vimrc .Xresources

.DEFAULT_GOAL = help
help: ## helpを表示
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
.PHONY: help

linux: ## linux
linux:bash_linux tmux vim x

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

clean: $(foreach f, $(DOT_FILES_linux), unlink-dot-file-$(f)) ## dotfilesたちを削除します
unlink-dot-file-%: %
	echo "Remove symlink $(HOME)/$<"
	unlink $(HOME)/$<