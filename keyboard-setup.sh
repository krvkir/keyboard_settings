#!/bin/sh

user=krvkir
userhome=$(getent passwd $user | cut -d: -f6)
export XAUTHORITY="$userhome/.Xauthority"
#export DISPLAY=:0

xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/my $DISPLAY
