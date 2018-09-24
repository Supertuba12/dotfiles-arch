#!/usr/bin/env sh
intern=eDP1
extern=HDMI3
extern2=DP1
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done



# Launch bar
extern_bool="$(xrandr | grep "$extern disconnected")"
extern2_bool="$(xrandr | grep "$extern2 disconnected")"


if [ "$extern2_bool" ] && [ "$extern_bool" ]; then
    polybar main
elif [ "$extern_bool" ]; then
    echo HELLO
    polybar main &
    polybar external2
elif [ "$extern2_bool" ]; then 
    polybar main &
    polybar external
else
    polybar main &
    polybar external &
    polybar external2
fi