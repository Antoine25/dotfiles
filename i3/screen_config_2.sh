xrandr --output HDMI-2 --auto
xrandr --output DP-1 --auto
xrandr --output HDMI-2 --primary --output DP-1 --right-of HDMI-2
xrandr --output eDP-1 --off
i3-msg 'workspace "1" move workspace to output HDMI-2'
i3-msg 'workspace "2" move workspace to output HDMI-2'
i3-msg 'workspace "3" move workspace to output HDMI-2'
i3-msg 'workspace "4" move workspace to output HDMI-2'
i3-msg 'workspace "5" move workspace to output DP-1'
