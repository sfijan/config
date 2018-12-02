#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

userresources=$HOME/.Xresources
xrdb -merge "$userresources"

usermodmap=$HOME/.Xmodmap
xmodmap "$usermodmap"

sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#SESSION=${1:-xfce}

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi



