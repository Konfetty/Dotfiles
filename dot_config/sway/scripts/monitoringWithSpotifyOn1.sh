#!/usr/bin/env bash
swaymsg workspace 1
swaymsg splith
sleep 0.2
spotify &
sleep 0.5
alacritty -e btop &
sleep 0.2
swaymsg splitv
alacritty --working-directory ~/work/backend &
sleep 0.2
swaymsg splith
alacritty --working-directory ~/work/backend &
sleep 0.2
swaymsg layout tabbed