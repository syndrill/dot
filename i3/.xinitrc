#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# Launch ssh-agent
eval $(ssh-agent -t 3600)

# background
$HOME/.fehbg &

# compositor
compton --config $HOME/.config/compton/compton.conf &

# bar
$HOME/.config/polybar/launch.sh &

# wm
exec i3

# # Hacks to hold Xorg
# while :; do
#   sleep 10
# done
