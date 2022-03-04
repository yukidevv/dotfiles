export PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR='vim'

#homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

#alias
export LSCOLORS=Cxfxcxdxbxegedabagacad
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'     

#golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#Python
export PATH=$PATH:~/Library/Python/3.8/bin
