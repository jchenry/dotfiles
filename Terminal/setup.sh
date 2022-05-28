#!/usr/bin/env bash -eo pipefail
#  Taken from: https://apple.stackexchange.com/questions/344401/how-to-programatically-set-terminal-theme-profile
theme=$(<theme.xml)
plutil -replace Window\ Settings.Dracula -xml "$theme" ~/Library/Preferences/com.apple.Terminal.plist
defaults write com.apple.Terminal "Default Window Settings" -string "DraculaTest"
defaults write com.apple.Terminal "Startup Window Settings" -string "DraculaTest"
