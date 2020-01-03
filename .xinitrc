#!/bin/sh

# Executes system's default `xinitrc`s.
[ -d /etc/X11/xinit/xinitrc.d ] && {
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && source "$f"
    done
    unset f
}

pgrep >/dev/null redshift || {
  redshift -l -21.3:-50.8 >/dev/null 2>&1 &
}

# Loads my custom keyboard map.
setxkbmap -model pc105 -layout us,us -variant altgr-intl,intl -option grp:shifts_toggle,grp_led:caps,compose:menu
xmodmap .xmodmap

# Loads Xresources.
xrdb -merge $HOME/.xres/xres

# Sets wallpaper.
. $HOME/.wallpaper/setwall.sh

bar.sh >/dev/null 2>&1 &
sxhkd -c $HOME/.sxhkd/sxhkdrc &

exec bspwm
