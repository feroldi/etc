#!/bin/sh

# Executes system's default `xinitrc`s.
[ -d /etc/X11/xinit/xinitrc.d ] && {
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
}

# Loads profile.
[ -f ~/.xprofile ] && . ~/.xprofile

export TZ="America/Sao_Paulo"

# Update font cache.
xset +fp /home/thlst/.fonts
xset fp rehash

# Sets mouse acceleration and threshold.
xset m 3/2 6

# Loads my custom keyboard map.
#setxkbmap br
xmodmap .xmodmap

# Loads xresources.
xrdb -merge $HOME/.xres/xres

# Sets wallpaper.
. $HOME/.env/rootimg

# Starts a few muxx utils.
nohup focus.sh > /dev/null 2>&1 &
nohup bar.sh > /dev/null 2>&1 &

# Sets DPI.
#xrandr --dpi 110

# Halt this script (i.e. this script won't exit).
exec halt.sh
