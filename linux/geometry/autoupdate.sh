inotifywait -q -m -e close_write custom | \
while read -r filename event; do
    xkbcomp -I"$HOME/.config/xkb" $HOME/.config/xkb/my - | xkbprint - - | ps2pdf - > layout.pdf
done
