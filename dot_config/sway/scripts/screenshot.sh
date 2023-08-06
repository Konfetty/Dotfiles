#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')

copy_arg=$1

GRIMSHOT_SAVE=save
GRIMSHOT_COPY=copy

grimshot_arg=$GRIMSHOT_SAVE
if [[ ! -z ${copy_arg} ]]; then
	echo "COPY ARG SET"
	if [[ $copy_arg == "copy" ]]; then
		grimshot_arg=$GRIMSHOT_COPY
	fi
fi

echo "Running grimshot with $grimshot_arg"
case $selected in
  active)
    /usr/share/sway/scripts/grimshot --notify $grimshot_arg active;;
  screen)
    /usr/share/sway/scripts/grimshot --notify $grimshot_arg screen;;
  output)
    /usr/share/sway/scripts/grimshot --notify $grimshot_arg output;;
  area)
    /usr/share/sway/scripts/grimshot --notify $grimshot_arg area;;
  window)
    /usr/share/sway/scripts/grimshot --notify $grimshot_arg window;;
esac
