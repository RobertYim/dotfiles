#!/usr/bin/env bash

# Set keyboard map
setxkbmap -option altwin:swap_lalt_lwin
setxkbmap -option ctrl:nocaps
# setxkbmap -option terminate:ctrl_alt_bksp

# set background image
#feh --bg-scale ~/Pictures/walls/wallpaper_52_magic_universe_by_zpecter-d2yw38i.jpg
betterlockscreen -w

# mount partitons
# /dev/sda5 --> PersonalData
# detail:
# https://help.ubuntu.com/community/AutomaticallyMountPartitions
# udisksctl mount --block-device /dev/sda5
# udisksctl mount --block-device /dev/sda6
# udisksctl mount --block-device /dev/sda7
# udisksctl mount --block-device /dev/sda8
# unmount:
# udisksctl mount --block-device /dev/sda...

# Load ICC Profiles
# https://wiki.archlinux.org/index.php/ICC_profiles#Loading_ICC_profiles
# device_id="xrandr-LVDS1"
# colormgr device-make-profile-default device_id profile_id
/usr/bin/xcalib -d :1 $HOME/.local/share/icc/Display\ Calibrated.icc
