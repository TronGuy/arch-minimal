a=$(xrandr -q | grep "connected" | cut -d ' ' -f1 | grep HDMI)
default="xrandr --output eDP --primary --mode 1366x768 --pos 0x0 --rotate normal --output HDMI-A-0 --off"
hdmi="xrandr --output eDP --primary --mode 1366x768 --pos 1366x0 --rotate normal --output HDMI-A-0 --mode 1366x768 --pos 0x0 --rotate normal"
if [[ $a ]]; then
	exec $hdmi
else
	exec $default
fi
