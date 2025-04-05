#!/bin/sh

user=krvkir
userhome=$(getent passwd $user | cut -d: -f6)
export XAUTHORITY="$userhome/.Xauthority"
#export DISPLAY=:0

# Keep xkb configs to have russian layout with special places for # & etc.
xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/my $DISPLAY

# setup wacom tablet
TOUCH=$(xsetwacom --list devices | grep -i "TOUCH" | cut -f2 | cut -d" " -f2)
xsetwacom --set $TOUCH "Area" "0 0 4560 2850"
xsetwacom --set $TOUCH "TapTime" 100
setup-wacom
