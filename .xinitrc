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

cat $HOME/.config/sxhkd/base \
    $HOME/.config/sxhkd/uwm \
    > $HOME/.config/sxhkd/sxhkdrc

. ~/scripts/muxx/focus.sh &
disown
. ~/scripts/bar.sh &
disown

exec $HOME/scripts/halt.sh

