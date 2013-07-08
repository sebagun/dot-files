#!/bin/sh

ln -svF $PWD/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
ln -svF $PWD/Preferences.sublime-settings.User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings

echo "DONE!"
