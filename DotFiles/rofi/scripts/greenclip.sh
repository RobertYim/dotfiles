#!/usr/bin/env bash

# https://github.com/erebe/greenclip/issues/27#issuecomment-459993587
# dependancy: rofi-greenclip

# Capture the current clipboard
BEFORE="$( xclip -o -selection clipboard )"

rofi -config ~/.config/rofi/themes/default.rasi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
sleep 0.5

# Capture the selection
TEXT="$( xclip -o -selection clipboard )"

# Only attempt to paste if there has been selection
if [ "${TEXT}" != "${BEFORE}" ]; then
  xdotool key Ctrl+Shift+v
fi

