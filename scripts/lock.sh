#!/usr/bin/bash

TMPBG=/tmp/screen.png


case "$1" in

  -l | --lock)

  ffmpeg -y -loglevel quiet -s 2880x1800 -f x11grab -i $DISPLAY -vframes 1 \
  -vf "boxblur=luma_radius=6:luma_power=3, \
      drawbox=x=25:y=1692:w=300:h=80:color=black@0.5:t=max" $TMPBG

  i3lock \
  -i "$TMPBG" \
  --timepos="x-90:h-ch+30" \
  --datepos="tx+24:ty+25" \
  --clock --timestr="%l:%M %P" --datestr "Type password to unlock..." \
  --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside \
  --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
  --insidevercolor=1edb34ff --insidewrongcolor=d23c3dff \
  --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+280:h-70" \
  --radius=20 --ring-width=3 --veriftext="" --wrongtext="" \
  --textcolor="ffffffff" --timecolor="ffffffff" --datecolor="ffffffff"
   rm $TMPBG
   ;;

esac


