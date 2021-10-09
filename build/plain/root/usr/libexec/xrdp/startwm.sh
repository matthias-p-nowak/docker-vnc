#!/usr/bin/bash
exec >/tmp/startx.out 2>/tmp/startx.err

export XDG_MENU_PREFIX="lxde-"
fbsetroot -gradient vertical -from green -to red &
conky &
xxkb &
setxkbmap -option grp:switch,grp:shifts_toggle 
xmodmap .Xmodmap 
exec dbus-launch fluxbox
