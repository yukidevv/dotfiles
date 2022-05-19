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
#extended cal(printing holiday)
alias calx='cal -3; curl -s https://www8.cao.go.jp/chosei/shukujitsu/syukujitsu.csv | iconv -f SHIFT-JIS -t UTF-8 | grep -E "`date -v-1m '+%Y/%-m/'`|`date '+%Y/%-m/'`|`date -v+1m '+%Y/%-m/'`"'
#golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#Python
export PATH=$PATH:~/Library/Python/3.8/bin

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
