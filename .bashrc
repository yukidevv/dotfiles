#export PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export PS1='\[\e[33m\]\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '

export EDITOR='vim'

#alias
export LSCOLORS=Cxfxcxdxbxegedabagacad
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'     
alias vf='vim $(fzf)'
alias t='todo.sh'
#gpg
export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "/home/yuki/.deno/env"

HISTFILESIZE=200000
export PATH="$HOME/.local/bin:$PATH"
