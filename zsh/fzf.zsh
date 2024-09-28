# FZF configurations
export FZF_DEFAULT_OPTS='--layout=reverse --height 40%'
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="rg --hidden --sort-files --files --null 2> /dev/null | xargs -0 dirname | uniq"

