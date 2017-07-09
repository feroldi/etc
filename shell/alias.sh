#!/bin/sh

# zeroday

alias cg='zerodays.py commit general'
alias ca='zerodays.py commit agenda'
alias agenda='zerodays.py agenda'
alias habit='zerodays.py todo fixed'
alias todo='zerodays.py todo normal'

# asm

alias objdump='objdump -M intel'

# general

alias less='less -R'
alias ls='ls --color=always -F'
alias la='ls --color=always -aF'
alias mpvnv='mpv --no-video'
alias mpvcp='mpv $(xclip -o -sel c) --ytdl-format mp4'
alias mpvcpnv='mpv --no-video $(xclip -o -sel c)'
alias x='startx'
alias vim='nvim'
alias v='nvim'
alias temperature='sensors | grep Core'
alias memory_usage='free -h | grep Mem: | awk "{print \$7}"'
alias p='ping pong'
alias sxiv='sxiv -qr'

# git alias

alias gs='git status'
alias gco='git checkout'
alias gb='git branch'
alias gcm='git commit -m'
alias gps='git push origin'
alias gpu='git pull origin'

# xclip

alias xpaste='xclip -o -sel c'
alias xcopy='xclip -sel c'

# $1: basename
# $2: error messagr
__report()
{
    printf '%s\n' "$1: $2" >&2
    return 1
}

deps()
{
    usage()
    {
        cat <<EOF >&2
usage: $1 add repo.url.git [branch]
       $1 update remote-name [branch]
EOF
    }

    BRANCH="${3:-master}"

    case "$1" in
        -h|--help)
            usage deps
            ;;
        add)
            BASE="$(basename -s .git "$2" | tr A-Z a-z)"
            git remote add -f "$BASE" "$2"
            git subtree add --prefix "deps/$BASE" "$BASE" "$BRANCH" --squash
            ;;
        update)
            BASE="$(echo $2 | tr A-Z a-z)"
            git fetch "$BASE" master
            git subtree pull --prefix "deps/$BASE" "$BASE" "$BRANCH" --squash
            ;;
        *)
            usage deps
            ;;
    esac
}

tat()
{
    test -z "$1" && {
        tmux attach
    } || {
        tmux attach -t "$1"
    }
}

