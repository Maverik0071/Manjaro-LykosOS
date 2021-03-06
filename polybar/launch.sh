#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
 killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi

# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

#desktop=$(echo $DESKTOP_SESSION)
#count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)


#case $desktop in

#    i3|/usr/share/xsessions/i3)
#    if type "xrandr" > /dev/null; then
#      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#        MONITOR=$m polybar --reload mainbar-i3 -c ~/.config/polybar/config &
#      done
#    else
#    polybar --reload mainbar-i3 -c ~/.config/polybar/config &
#    fi
    # second polybar at bottom
    # if type "xrandr" > /dev/null; then
    #   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
   #      MONITOR=$m polybar --reload mainbar-i3-extra -c ~/.config/polybar/config &
   #    done
   #  else
  #   polybar --reload mainbar-i3-extra -c ~/.config/polybar/config &
    # fi
     ;;

esac

