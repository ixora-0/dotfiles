#!/bin/sh

run() {
    if ! pgrep -f "$1" ;
    then
        "$@"&
    fi
}


if xrandr | grep -q 'HDMI-1 connected' ; then
    xrandr --output HDMI-1 --mode 1920x1080 --rate 144 --right-of eDP-1
fi

run picom
run ibus-daemon -drx
run libinput-gestures
run redshift
run playerctl daemon
# run wal -R
# run feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
run nm-applet

# run killall -q polybar
# if type "xrandr"; then
#     for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#       MONITOR=$m polybar --reload example &
#     done
# else
#     run polybar --reload example
# fi
