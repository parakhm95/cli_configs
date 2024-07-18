#!/bin/bash
export DISPLAY=:1
export XAUTHORITY=/run/user/1000/gdm/Xauthority
echo "Display is $DISPLAY"
xrandr_output=$(xrandr -display :1 --prop)
active_monitors=$(xrandr -display :1 --listactivemonitors)
home_edid="1c540d2701010101"
# office_edid1="10acd9d054413732"
# office_edid2="10acd9d054303232"
home_config_on(){
xrandr xrandr -display :0.0 --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --dpi 100 --set "TearFree" "on" --output DisplayPort-1 --mode 2560x1440 --dpi 110 --rate 164.80 --pos 1920x0 --rotate normal --set "TearFree" "on"
}
home_on="xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --rate 143.98 --set "TearFree" "on" --output DP-1-0 --mode 2560x1440 --rate 164.80 --pos 1920x0 --rotate normal"
home_off="xrandr --output DP-1-0 --off --output eDP --primary --set "TearFree" "on""
# office_off="xrandr --output DisplayPort-3 --off --output DisplayPort-4 --off --output eDP --primary --dpi 100 --set "TearFree" "on""
# office_on="xrandr --output eDP --mode 1920x1080 --primary --pos 3000x183 --rotate normal --dpi 100 --output DisplayPort-3 --mode 1920x1080 --dpi 100 --pos 1080x243 --rotate normal --dpi 100 --set "TearFree" "on" --output DisplayPort-4 --mode 1920x1080 --pos 0x0 --rotate left --set "TearFree" "on""

home_config_off(){
xrandr --output DisplayPort-1 --off
}
# echo "$xrandr_output"
if [[ $xrandr_output =~ $home_edid ]]
then
    echo "Home Monitor is connected"
    if [[ $active_monitors =~ "DP-1-0" ]]
    then
        echo "Home Monitor already active, doing nothing"
    else
        echo "Home Monitor not active, activating"
        $home_on
    fi
else
    echo "Home Monitor is not connected"
    if [[ $active_monitors =~ "DP-1-0" ]]
    then
        echo "Home Monitor active, switching off"
        $home_off
    else
        echo "Home Monitor inactive, doing nothing"
    fi
fi

# if [[ $xrandr_output =~ $office_edid1 || $xrandr_output =~ $office_edid2 ]]
# then
#     echo "Office Monitors are connected"
#     if [[ $active_monitors =~ "DisplayPort-3" || $active_monitors =~ "DisplayPort-4" ]]
#     then
#         echo "Office monitors already active, doing nothing"
#     else
#         echo "Office Monitors not active, activating"
#         $office_on
#     fi
# else
#     echo "Office Monitors are not connected"
#     if [[ $active_monitors =~ "DisplayPort" ]]
#     then
#         echo "Office monitors active, switching off"
#         $office_off
#     else
#         echo "Office monitors inactive, doing nothing"
#     fi
# fi
#
