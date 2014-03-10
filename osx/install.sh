#!/bin/sh

ln -svF $PWD/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
ln -svF $PWD/Preferences.sublime-settings.User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings

### Nice hacks ###
# http://apple.stackexchange.com/questions/71939/how-to-get-keyboard-focus-on-login-screen-password-field-in-os-x-10-8
defaults write ~/Library/Preferences/com.apple.screensaver loginWindowIdleTime 10800
# http://osxdaily.com/2012/06/08/14-must-know-tips-tricks-for-mac-os-x/
chflags nohidden ~/Library/

echo "DONE!"
