# .zshrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

## Environment

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000000
export SAVEHIST=10000000

autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%20<...<%~%<<%{$reset_color%}$ "

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ls='ls -G'

if [[ "$OSTYPE" == "darwin"* ]]; then
    export VISUAL=/opt/homebrew/bin/nvim
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    export VISUAL=/usr/bin/nvim
fi
export EDITOR="$VISUAL"

# Stop <c-d> exiting
set -o ignoreeof

# Set vi mode
bindkey -v
set -o vi

# Allow history to be recorded in tmux sessions
# https://askubuntu.com/questions/339546/how-do-i-see-the-history-of-the-commands-i-have-run-in-tmux
# avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

ZSH_CONFIG=~/.config/zsh/

## Sources
source $ZSH_CONFIG/aliases.zsh
if [[ -f $ZSH_CONFIG/local/aliases-local.zsh ]]; then
    source $ZSH_CONFIG/local/aliases-local.zsh
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    source $ZSH_CONFIG/path-mac.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    source $ZSH_CONFIG/path-linux.zsh
fi
if [[ -f $ZSH_CONFIG/local/path-local.zsh ]]; then
    source $ZSH_CONFIG/local/path-local.zsh
fi
if [[ -f $ZSH_CONFIG/local/rc-local.zsh ]]; then
    source $ZSH_CONFIG/local/rc-local.zsh
fi

source $ZSH_CONFIG/bun.zsh
source $ZSH_CONFIG/fzf.zsh

# compinit
# eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
