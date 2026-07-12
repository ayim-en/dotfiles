
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Users/ayime/Code/develop/flutter/bin"

alias vi='nvim'
EDITOR='nvim'

# fzf
source <(fzf --zsh)
alias inv='nvim $(fzf -m --preview "bat --color=always {}")'

show_file_or_dir_preview="if [ -d {} ]; then tree -C {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"

bindkey '^[f' fzf-file-widget
bindkey '^[r' fzf-history-widget

# opencode
export PATH=/Users/ayime/.opencode/bin:$PATH
export PATH="$PATH:$HOME/.pub-cache/bin"

# tmux
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'
alias ta='tmux attach-session'
alias tx='tmux kill-session'
alias trn='tmux rename-session'

# git
alias gd="git diff"

alias ga="git add"
alias gap="git add --patch"

alias gc="git commit"

alias gp="git push"
alias gu="git pull"

alias gl="git log --all --graph --pretty=format:'%C(magenta)%h %C(white) %an %ar%C(auto) %D%n%s%n'"
alias gb="git branch"

alias gi="git init"
alias gcl="git clone"

# matrix rain
alias matrix="zsh ~/.matrix_jp.sh"
alias matrix="zsh ~/.matrix_jp.sh"
