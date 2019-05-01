# git
function git_prepare() {
    if [ -n "$BUFFER" ];
    then
        BUFFER="git commit -m \"$BUFFER\" && git push"
    fi

    if [ -z "$BUFFER" ];
    then
        BUFFER="git commit -v && git push"
    fi

    zle accept-line
}
zle -N git_prepare
bindkey "^g" git_prepare
