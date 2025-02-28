
# Vim
alias vi='nvim'
alias vim='nvim'

# ls/eza
alias ll='ls -alF'
alias la='ls -A'
alias ls='eza --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first'
alias lla='eza -la --icons --group-directories-first'
alias l='eza - --icons --group-directories-first'

# Git
alias gitlog='git log --pretty=format:"%h %s" --graph'
alias gl='git log --pretty=format:"%h %s" --graph'
alias ga='git add'
alias gaa='git add .'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gca='git add . && git commit'
alias gco='git checkout'
alias gcob='git branch | fzf | xargs git checkout'
alias gpushb='git branch | fzf | sed "s/^* //" | xargs git push -u origin '
alias gbd='git branch | fzf | sed "s/^* //" | xargs git branch -D '
alias gpullb='git branch | fzf | sed "s/^* //" | xargs git pull '
alias gmergeb='git branch | fzf | sed "s/^* //" | xargs git merge '
alias gd='git diff | bat'
alias gdi='git diff'
alias gds='git diff --staged | bat'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gp='git push'
alias gpo='git push origin mainline'
alias gpu='git pull'
alias gst='git status -u'
alias it='git'
alias gclsb='git clone --recurse-submodules -j8 git://github.com/foo/bar.git'
alias gsubup='git submodule update --remote --recursive'
alias gsubupl='git -c protocol.file.allow=always submodule update --remote --recursive'

# cd
alias cdd='cd ~/workspace/dotfiles'

# tmux
alias tn="tmux new -s"
alias tls="tmux ls"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

# unix upgrades
alias grep='rg'
alias cat="bat"
alias htop="btop"

# other
alias :q='exit'
alias :wq='exit'

