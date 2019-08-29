#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# merge in defaults and keymaps

xrdb -load ~/.Xresources &
xmodmap ~/.xres/Xmodmap 

# start some nice programs
#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#        [ -x "$f" ] && . "$f"
#    done
#    unset f
#fi

~/documents/programs/bar.sh | lemonbar -p &

# set the wallpaper
feh --bg-scale ~/pics/wallpapers/portal-who.jpg &

compton &
sxhkd &
exec bspwm
