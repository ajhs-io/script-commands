#!/bin/zsh
  
# @raycast.schemaVersion 1
# @raycast.title Toggle Bluetooth
# @raycast.mode fullOutput
# @raycast.packageName Raycast Scripts
#
# Optional parameters:
# @raycast.icon 🌀
# @raycast.currentDirectoryPath ~
# @raycast.needsConfirmation false
#
# Documentation:
# @raycast.description Toogles bluetooth on or off, requires blueutil.  
# @raycast.author Alexander Steffen
# @raycast.authorURL https://ajhs.io

value=$(/opt/homebrew/bin/blueutil -p)

if [ $value -eq 1 ]; then
    blueutil -p 0
else
    blueutil -p 1
fi
