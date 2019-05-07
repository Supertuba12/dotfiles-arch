#!/usr/bin/bash

TMPBG=/tmp/screen.png


case "$1" in

  -l | --lock)

  ffmpeg -y -loglevel quiet -s 2880x1800 -f x11grab -i $DISPLAY -vframes 1 \
  -vf "boxblur=luma_radius=3:luma_power=3, \
  drawbox=x=iw-(0.99*iw):y=ih-(0.06*ih):w=300:h=85:color=black@0.5:t=fill" $TMPBG

  i3lock \
  -i "$TMPBG" \
  --timepos="x+75:h-44" \
  --datepos="tx+6:ty+20" \
  --clock --timestr="%l:%M %P" --datestr "Type password..." \
  --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside \
  --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
  --insidevercolor=1edb34ff --insidewrongcolor=d23c3dff \
  --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+185:h-44" \
  --radius=20 --ring-width=3 --veriftext="" --wrongtext="" \
  --layoutcolor="ffffffff" --timecolor="ffffffff" --datecolor="ffffffff" \
  --timesize=22 --datesize=14
  rm $TMPBG
  ;;

  -b | --blur)

  i3lock \
  --blur=3 \
  --timepos="x+75:h-44" \
  --datepos="tx+6:ty+20" \
  --clock --timestr="%l:%M %P" --datestr "Type password..." \
  --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside \
  --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
  --insidevercolor=1edb34ff --insidewrongcolor=d23c3dff \
  --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+185:h-44" \
  --radius=20 --ring-width=3 --veriftext="" --wrongtext="" \
  --layoutcolor="ffffffff" --timecolor="ffffffff" --datecolor="ffffffff" \
  --timesize=22 --datesize=14
  ;;
esac


