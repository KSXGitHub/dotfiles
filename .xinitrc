#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xkbevd &
setxkbmap -option caps:escape # use caps as esc (caps:swapescape to swap)
setxkbmap -layout us,ru -option grp:toggle # change layout with ralt

xsetroot -cursor_name left_ptr

xinput disable 12 # disable touchpad

xset -r # disable key repeat
xset -b # disable bell

xrdb -merge ~/.Xresources

unclutter & # hide mouse cursor

redshift -l 60:30 &disown # adjust color temperature according to daytime

skypetab-ng &

tmux new-session -d -s rtorrent rtorrent

autocutsel -selection CLIPBOARD -fork
autocutsel -selection PRIMARY -fork 

xrandr --output LVDS --auto --output HDMI-0 --off

/usr/bin/awesome
