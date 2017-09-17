#!/bin/sh

# Executes system's default `xinitrc`s.
[ -d /etc/X11/xinit/xinitrc.d ] && {
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && source "$f"
    done
    unset f
}

#[ -f ~/.xprofile] && source ~/.xprofile
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/bin"

export TZ="America/Sao_Paulo"

pgrep >/dev/null redshift || {
  nohup redshift -l -21.3:-50.8 >/dev/null 2>&1 &
}

# Update font cache.
xset +fp /home/thlst/.fonts
xset fp rehash

# Sets mouse acceleration and threshold.
xset m 3/2 6

# Loads my custom keyboard map.
setxkbmap -model pc105 -layout us,us -variant altgr-intl,intl -option grp:shifts_toggle,grp_led:caps,compose:menu
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
exec ~/bin/halt.sh
