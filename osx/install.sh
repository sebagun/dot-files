#!/bin/sh

mkdir -p ~/Library/KeyBindings/; touch ~/Library/KeyBindings/DefaultKeyBinding.dict
ln -svF $PWD/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
ln -svF $PWD/Preferences.sublime-settings.User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
ln -svF $PWD/Preferences.sublime-settings.User3 ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

### Nice hacks ###
# http://apple.stackexchange.com/questions/71939/how-to-get-keyboard-focus-on-login-screen-password-field-in-os-x-10-8
defaults write ~/Library/Preferences/com.apple.screensaver loginWindowIdleTime 10800
# http://osxdaily.com/2012/06/08/14-must-know-tips-tricks-for-mac-os-x/
chflags nohidden ~/Library/

### https://github.com/mathiasbynens/dotfiles/blob/master/.osx ###
# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"
# Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "DONE!"
