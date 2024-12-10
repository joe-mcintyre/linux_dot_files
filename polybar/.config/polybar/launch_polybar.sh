if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -c /home/jdm/.config/polybar/config.ini toph &
  done
else
  polybar --reload -c /home/jdm/.config/polybar/config.ini toph &
fi
