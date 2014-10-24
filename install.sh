#!/bin/sh

ln -svF $PWD/vimrc ~/.vimrc
ln -svF $PWD/bash_profile ~/.bash_profile
ln -svF $PWD/git-completion.bash ~/.git-completion.bash
ln -svF $PWD/git-prompt.sh ~/.git-prompt.sh
ln -svF $PWD/gitconfig ~/.gitconfig
ln -svF $PWD/gitk ~/.gitk
ln -svF $PWD/kdiff3rc ~/.kdiff3rc
ln -svF $PWD/hushlogin ~/.hushlogin

echo "DONE!"
