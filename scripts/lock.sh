#!/bin/env sh
TMPBG=/tmp/screen.png
ffmpeg -y -loglevel quiet -s 2880x1800 -f x11grab -i $DISPLAY -vframes 1 \
-vf "boxblur=luma_radius=6:luma_power=3" $TMPBG
i3lock -i $TMPBG
rm $TMPBG

