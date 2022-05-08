alias build-targets="make -rpn | sed -n -e '/^$/ { n ; /^[^ .#][^ ]*:/p ; }' | egrep --color '^[^ ]*:'"
alias ebg="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias tmux="tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf"

alias drone-local="drone exec --branch $(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p') --trusted"