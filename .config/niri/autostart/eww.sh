#!/bin/bash
# ~/.config/niri/autostart/eww_start.sh
eww daemon
sleep 1  # make sure daemon is up
eww open-many calendar uptime clock battery-volume music-player system-monitor
