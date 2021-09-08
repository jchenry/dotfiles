# boosted from https://threkk.medium.com/how-to-use-bookmarks-in-bash-zsh-6b8074e40774 and adapted using mattn_jp's bash changes: https://twitter.com/mattn_jp/status/1434192554036137995?s=20
if [ -d "$HOME/.local/cdbookmarks" ]; then
    export CDPATH=".:$HOME/.local/cdbookmarks:/"
    alias goto="cd -P"
    _goto()
    {
	local IFS=$'\n'
	COMPREPLY=( $( compgen -W "$(/bin/ls $HOME/.local/cdbookmarks)" -- ${COMP_WORDS[COMP_CWORD]}))
    } && complete -F _goto goto

fi
