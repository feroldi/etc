#!/bin/sh

# asm

alias objdump='objdump -M intel'

# general

alias ls='ls --color=auto -F'
alias la='ls --color=auto -aF'
alias mpvnv='mpv --no-video'
alias mpvcp='mpv $(xclip -o -sel c) --ytdl-format mp4'
alias mpvcpnv='mpv --no-video $(xclip -o -sel c)'
alias x='startx'
alias vim='nvim'
alias e='nvim'
alias s='sensors'
alias f='free -h'
alias fs='f; s'
alias p='ping pong'

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

merge()
{
    usage()
    {
        cat <<EOF >&2
usage: $1 <branch>

 merge current branch into <branch>
EOF
    }

    test $# -ne 1 && {
        usage $0
        return 1
    }

    CUR=$(git rev-parse --abbrev-ref HEAD)
    BRANCH=${1:-master}
    test "$CUR" = "$BRANCH" && {
        return __report $0 "trying to merge $CUR to itself."
    }
    echo "checkout $BRANCH..."
    git checkout "$BRANCH"
    echo "merge $CUR..."
    git merge "$CUR"
    echo "going back to $CUR..."
    git checkout "$CUR"
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
            BASE="$(basename -s .git $2)"
            git remote add -f "$BASE" "$2"
            git subtree add --prefix deps/"$BASE" "$BASE" \
                "$BRANCH" --squash
            ;;
        update)
            BASE="$2"
            git fetch "$BASE" master
            git subtree pull --prefix deps/"$BASE" "$BASE" \
                "$BRANCH" --squash
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

