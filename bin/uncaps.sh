#!/bin/bash
setxkbmap -option compose:menu 
xmodmap -e "remove Lock = Caps_Lock" # Remove Caps Lock
xmodmap -e "keycode 66 = Multi_key" # Make the key into multykey
