# Bash History
shopt -s histappend
export HISTSIZE=100000
export HISTFILESIZE=10000000
export HISTCONTROL=ignoreboth
export PROMPT_COMMAND="history -a; history -n"
export HISTIGNORE="ls:ll:cd:pwd:bg:fg:history"
