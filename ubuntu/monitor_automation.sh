#!/bin/bash
export DISPLAY=:0
export XAUTHORITY=/run/user/1000/gdm/Xauthority
echo "Display is $DISPLAY"
xrandr_output=$(xrandr -display :0 --prop)
active_monitors=$(xrandr -display :0 --listactivemonitors)
home_edid="1c540d2701010101"
home_config_on(){
xrandr xrandr -display :0.0 --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --dpi 100 --set "TearFree" "on" --output DisplayPort-1 --mode 2560x1440 --dpi 110 --rate 164.80 --pos 1920x0 --rotate normal --set "TearFree" "on"
}
home_on="xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --dpi 100 --set "TearFree" "on" --output DisplayPort-1 --mode 2560x1440 --dpi 110 --rate 164.80 --pos 1920x0 --rotate normal --set "TearFree" "on""
home_off="xrandr --output DisplayPort-1 --off"
home_config_off(){
xrandr --output DisplayPort-1 --off
}
office_edid=""
# echo "$xrandr_output"
if [[ $xrandr_output =~ $home_edid ]]
then
    echo "Home Monitor is connected"
    if [[ $active_monitors =~ "DisplayPort" ]]
    then
        echo "Home Monitor already active, doing nothing"
    else
        echo "Home Monitor not active, activating"
        $home_on
    fi
else
    echo "Home Monitor is not connected"
    if [[ $active_monitors =~ "DisplayPort" ]]
    then
        echo "Home Monitor active, switching off"
        $home_off
    else
        echo "Home Monitor not active, doing nothing"
    fi
fi
