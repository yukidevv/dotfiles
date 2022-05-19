#export PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '
export EDITOR='vim'

#homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

#alias
#export LSCOLORS=Cxfxcxdxbxegedabagacad
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'     

#golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#Python
export PATH=$PATH:~/Library/Python/3.8/bin

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
