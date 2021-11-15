#!/usr/bin/env bash

WMNAME=`wmctrl -m | sed -n 's/Name: //p'`

wal -i $(sed -n 's/file=//p' ~/.config/nitrogen/bg-saved.cfg) -q -t

PFILE="$HOME/.config/worm/polybar/colors.ini"

. "$HOME/.cache/wal/colors.sh"

BG=`printf "%s\n" "$background"`
FG=`printf "%s\n" "$foreground"`
AC=`printf "%s\n" "$color1"`
C1=`printf "%s\n" "$color1"`
C2=`printf "%s\n" "$color2"`
C3=`printf "%s\n" "$color6"`

sed -i -e "s/background = #.*/background = $BG/g" $PFILE
sed -i -e "s/foreground = #.*/foreground = $FG/g" $PFILE
sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
sed -i -e "s/color1 = #.*/color1 = $C1/g" $PFILE
sed -i -e "s/color2 = #.*/color2 = $C2/g" $PFILE
sed -i -e "s/color3 = #.*/color3 = $C3/g" $PFILE

polybar-msg cmd restart
