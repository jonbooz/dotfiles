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

PS1="[%n@%m:%20<...<%~%<<]$ "

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ls='ls -G'

export VISUAL=/opt/homebrew/bin/nvim
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

## Sources
source ~/.config/zsh/aliases.zsh
if [[ -f ~/.config/zsh/local/aliases-local.zsh ]]; then
    source ~/.config/zsh/local/aliases-local.zsh
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.config/zsh/path-mac.zsh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    source ~/.config/zsh/path-linux.zsh
fi
if [[ -f ~/.config/zsh/local/path-local.zsh ]]; then
    source ~/.config/zsh/local/path-local.zsh
fi

source ~/.config/zsh/bun.zsh
source ~/.config/zsh/fzf.zsh

# compinit
# eval "$(zoxide init zsh)"
