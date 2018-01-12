#!/usr/bin/env sh
intern=eDP1
extern=DP1

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
if xrandr | grep "$extern disconnected"; then
    polybar main
else
    polybar main &
    polybar external
fi