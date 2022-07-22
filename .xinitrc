#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec fcitx5 &
exec slstatus &
# remap capslock -> escape
setxkbmap -option caps:escape
# resolution
xrandr --output eDP-1-1 --mode 2560x1440  --scale 1.25x1.25
# wallpaper
feh --bg-fill --randomize /usr/share/backgrounds/archlinux/*
# make opacity working(for st plug - alpha)
picom -b
# restart dwm and other applications not broken
prime-offload &
ssh-agent dwm
sudo prime-switch
