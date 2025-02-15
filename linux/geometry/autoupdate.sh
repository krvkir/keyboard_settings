#!/bin/bash
inotifywait -q -m -e close_write custom | \
while read -r filename event; do
    # xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/my - \
    #     | xkbprint - - \
    #     | ps2pdf - > layout.pdf
    setxkbmap -layout us -geometry "custom(thinkpad_s1)" -print |\
        xkbcomp -I"$HOME/.config/xkb" - - |\
        xkbprint -label symbols -color -fit - - |\
        ps2pdf - > layout.pdf
done
