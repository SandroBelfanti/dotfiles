bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
# Ctrl+backspace
bindkey "^H" backward-delete-word
# Ctrl+delete
bindkey "\e[3;5~" delete-word
 
export PAGER="less"
export LESS="-cwQMsiR"
export VISUAL="nvim"
export EDITOR="nvim"
 
unsetopt BEEP
 
zstyle ':completion:*' menu select
 
alias vim="nvim"
