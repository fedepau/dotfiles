# ~/.xinitrc

#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [[ "$(xrandr | grep 'VGA1 connected')" != "" ]]; then
xrandr --output LVDS1 --primary --mode 1280x800 --pos 1024x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --off --output HDMI2 --off --output VGA1 --mode 1024x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off
fi	

xbacklight -set 50 &
#setxkbmap us &
setxkbmap it &
picom -f &
/usr/bin/dropbox &
feh --bg-fill ~/.wallpapers/kqaeN5I.jpg &
#feh --bg-center --randomize ~/.wallpapers/*.jpg &
dwmblocks &
while true; do
	dwm >/dev/null 2>&1
done
exec dwm
