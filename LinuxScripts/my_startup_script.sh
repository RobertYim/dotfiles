#!/usr/bin/env bash

# Set keyboard map
# !!!! implemented by gnome-settings-daemon
setxkbmap -option altwin:swap_lalt_lwin
setxkbmap -option ctrl:nocaps
setxkbmap -option terminate:ctrl_alt_bksp

# set background image
#feh --bg-scale ~/Pictures/walls/wallpaper_52_magic_universe_by_zpecter-d2yw38i.jpg
feh --bg-scale ~/Pictures/walls/Andromeda\ Galaxy.jpg

# mount partitons
# /dev/sda5 --> PersonalData
# /dev/sda6 --> Music
# /dev/sda7 --> Movie
# /dev/sda8 --> Storage
# /dev/sda1 --> win7 C:
# detail:
# https://help.ubuntu.com/community/AutomaticallyMountPartitions
udisksctl mount --block-device /dev/sda5
udisksctl mount --block-device /dev/sda6
udisksctl mount --block-device /dev/sda7
udisksctl mount --block-device /dev/sda8
# unmount:
# udisksctl mount --block-device /dev/sda...

