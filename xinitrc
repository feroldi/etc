#!/bin/sh

[ -d /etc/X11/xinit/xinitrc.d ] && {
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
}

[ -f ~/.xprofile ] && . ~/.xprofile

export TZ="America/Sao_Paulo"

xset +fp /home/thlst/.fonts
xset fp rehash

# set mouse stuff
xset m 3/2 6

setxkbmap br
xmodmap .xmodmap

# Loads xresources (terminal stuff)
xrdb -merge $HOME/.xres/xres

. $HOME/.env/rootimg

focus.sh &
disown
bar.sh &
disown

exec halt.sh

