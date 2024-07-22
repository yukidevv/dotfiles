DOT_FILES_mac = .bash_profile .bashrc_mac .tmux.conf .vimrc

DOT_FILES_linux = .bash_profile .bashrc .tmux.conf .vimrc .Xresources

.DEFAULT_GOAL = help
help: ## helpを表示
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
.PHONY: help

linux: ## linuxのため
linux:bash_linux tmux vim x

mac:  ## macのため
mac:bash_mac tmux vim

.PHONY: bash_linux
bash_linux:
	ln -vsf ${PWD}/.bash_profile ${HOME}/.bash_profile
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc

.PHONY:bash_mac
bash_mac:
	ln -vsf ${PWD}/.bash_profile ${HOME}/.bash_profile
	ln -vsf ${PWD}/.bashrc_mac ${HOME}/.bashrc_mac

.PHONY: tmux
tmux:
	ln -vsf ${PWD}/.tmux.conf ${HOME}/.tmux.conf

.PHONY: vim
vim:
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc

.PHONY: x 
x:
	ln -vsf ${PWD}/.Xresources ${HOME}/.Xresources

clean_l: $(foreach f, $(DOT_FILES_linux), unlink-dot-file-$(f)) ## linux関連リンクを削除
clean_m: $(foreach f, $(DOT_FILES_mac), unlink-dot-file-$(f)) ## mac関連リンクを削除
unlink-dot-file-%: %
	echo "Remove symlink $(HOME)/$<"
	unlink $(HOME)/$<

list: ## Homebrewでインストールしたアプリ一覧
	cd brew && . ./dump.sh