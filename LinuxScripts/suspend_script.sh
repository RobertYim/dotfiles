#!/usr/bin/env bash

sleep $1
gnome-screensaver-command --lock
dbus-send --print-reply --system --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend

