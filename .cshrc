# New files are created as 644 (rw-r--r--) and directories as 755 (rwxr-xr-x)
# this is the default
umask 022

limit coredumpsize 0
if (! $?prompt) exit

# A simple prompt
set prompt="%{\033[94m%}$title${USER}%{\033[0m%}@%{\033[33m%}%M%{\033[0m%}:%c0%{\033[36m%}>%{\033[0m%} "

  
set history  = 2500
set savehist=(1000 merge)
set autolist
  
set SHELLCOLOR=1

setenv PAGER less
setenv LESS -cwQMsiR
setenv LESSOPEN "| /bin/src-hilite-lesspipe.sh %s"

setenv EDITOR vim
setenv VISUAL vim
  
bindkey -k up history-search-backward
bindkey -k down history-search-forward
bindkey "\e[3~" delete-char

source ~/.alias
source ~/.completion
source ~/.git-completion
