if [ -z "$PS1" ]; then
   return
fi

export PS1='${c_user}\u${c_reset}@${c_user}\h${c_reset}:${c_path}\w${c_reset}$(git_prompt)\n\$ '
