#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" = "eDP" ]; then
        MONITOR=$m polybar --reload topbar &
        MONITOR=$m polybar --reload bottombar &
    else
        MONITOR=$m polybar --reload topbar-lowdpi &
        MONITOR=$m polybar --reload bottombar-lowdpi &
    fi
  done
else
  polybar --reload topbar &
fi
# polybar topbar 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
