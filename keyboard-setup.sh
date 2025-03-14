#!/bin/sh

user=krvkir
userhome=$(getent passwd $user | cut -d: -f6)
export XAUTHORITY="$userhome/.Xauthority"
#export DISPLAY=:0

xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/my $DISPLAY

# setup wacom tablet
xsetwacom --set $(xsetwacom --list devices | grep -i "TOUCH" | cut -f2 | cut -d" " -f2) "Area" "0 0 4560 2850"
