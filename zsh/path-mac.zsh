
export PATH=$PATH:$HOME/.bin
export PATH=${PATH}:$(find $HOME/.bin -type d | tr '\n' ':' | sed 's/:$//')
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/opt/homebrew/bin/

