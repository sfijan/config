#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# merge in defaults and keymaps

xrdb -load ~/.Xresources &
xmodmap ~/.xres/Xmodmap 

# start thunar for automounting and faster launching
thunar --daemon &

~/documents/programs/bar.sh | lemonbar -p &

# set the wallpaper
feh --bg-scale ~/pics/wallpapers/portal-who.jpg &

# start libinput-gestures
libinput-gestures-setup restart &

compton &
sxhkd &
exec bspwm
