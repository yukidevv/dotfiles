#export PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# PS1,brew,Rust,gcc,
if [ "$(uname)" == 'Darwin' ]; then
  export PS1='\[\e[33m\]\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '
  eval "$(/opt/homebrew/bin/brew shellenv)"
  . "$HOME/.cargo/env"
  alias gcc='gcc-12'
  alias g++='g++-12'
else
  export PS1='\[\e[31;42m\]\u@\h:\[\e[31m\]\w\[\e[0m\]\$ '
fi

export EDITOR='vim'

#alias
export LSCOLORS=Cxfxcxdxbxegedabagacad
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'     

#golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#pyenv+venv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#jvm for scala
export JAVA_HOME="/Users/yuki/Library/Caches/Coursier/arc/https/github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_mac_hotspot_8u292b10.tar.gz/jdk8u292-b10/Contents/Home"
export PATH="$PATH:/Users/yuki/Library/Application Support/Coursier/bin" 
