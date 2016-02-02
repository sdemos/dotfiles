#!/bin/bash

# run the urxvt daemon
urxvtd -q -o -f

# set some xserver parameters
xset -dpms
xset s 0
xset r rate 300 60

# turn on optical audio output
amixer -c 0 cset name='IEC958 Playback Switch' on

# apply some custom keys
if [ -s ~/.Xmodmap]; then
    xmodmap ~/.Xmodmap
fi

# run xmonad
xmonad

# when xmonad is finished running, log me out of the tty
logout
