#!/bin/sh

user=krvkir
userhome=$(getent passwd $user | cut -d: -f6)
export XAUTHORITY="$userhome/.Xauthority"
#export DISPLAY=:0

# Make it systemd service (what those %i and %E mean?)
#kmonad /home/$USER/repos/keyboard_settings/kmonad/main.kbd &
#kmonad /home/$USER/repos/keyboard_settings/kmonad/zsa_moonlander.kbd &

# Keep it for russian layout with special places for # & etc,
# and also for yo and zsh letters.
xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/my $DISPLAY

# setup wacom tablet
xsetwacom --set $(xsetwacom --list devices | grep -i "TOUCH" | cut -f2 | cut -d" " -f2) "Area" "0 0 4560 2850"
