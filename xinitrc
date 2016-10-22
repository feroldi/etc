#!/usr/bin/env sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

[ -f ~/.xprofile ] && . ~/.xprofile

export TZ="America/Sao_Paulo"

xset +fp /home/thlst/.fonts
xset fp rehash

setxkbmap br
xmodmap .xmodmap

# Loads xresources (terminal stuff)
xrdb -merge $HOME/.xres/xres

. $HOME/.env/rootimg

. ~/bin/scripts/muxx/focus.sh &
disown
. ~/bin/scripts/bar.sh &
disown

exec $HOME/bin/scripts/halt.sh

