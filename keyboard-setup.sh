#!/bin/sh

user=krvkir
userhome=$(getent passwd $user | cut -d: -f6)
export XAUTHORITY="$userhome/.Xauthority"
#export DISPLAY=:0

# Keep xkb configs to have russian layout with special places for # & etc.
xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/kk $DISPLAY

# setup wacom tablet
setup-wacom
