#!/bin/bash

SINK="Master"

case $1 in

  "volume")
    echo $(amixer sget $SINK | awk -F"[][]" '/Left:/ { sub(/%/, "", $2); print $2 }')
  ;;

  "mute")
    amixer sget $SINK | sed 6q | grep -q '\[on\]' && echo "no" || echo "yes"
  ;;

  "set_sink")
    amixer sset Master $2
  ;;
esac
