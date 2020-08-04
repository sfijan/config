#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# fonts
#xset +fp /home/sven/.fonts
#xset fp rehash

# start thunar for automounting and faster launching
thunar --daemon &

# start bar
bar | lemonbar -p &

# set the wallpaper
habak -hi ~/pics/wallpapers

# start libinput-gestures
libinput-gestures-setup restart &

# merge in defaults and keymaps
xrdb -load ~/.Xresources &
xmodmap ~/.xres/Xmodmap 

picom -b
sxhkd &
exec bspwm
#exec i3
