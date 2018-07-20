#!/bin/sh

# Executes system's default `xinitrc`s.
[ -d /etc/X11/xinit/xinitrc.d ] && {
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && source "$f"
    done
    unset f
}

# Copied from ~/.profile.
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/bin"

pgrep >/dev/null redshift || {
  redshift -l -21.3:-50.8 >/dev/null 2>&1 &
}

# Update font cache.
xset +fp /home/thlst/.fonts

# not needed; reloads the front path on an active X session.
#xset fp rehash

# Sets mouse acceleration and threshold.
xset m 3/2 6

# Loads my custom keyboard map.
setxkbmap -model pc105 -layout us,us -variant altgr-intl,intl -option grp:shifts_toggle,grp_led:caps,compose:menu
xmodmap .xmodmap

# Loads Xresources.
xrdb -merge $HOME/.xres/xres

# Sets wallpaper.
. $HOME/.wallpaper/setwall.sh

bar.sh >/dev/null 2>&1 &

# Sets DPI.
#xrandr --dpi 110

# Launchs key-bindings and window manager.
sxhkd -c $HOME/.sxhkd/sxhkdrc&
exec bspwm
