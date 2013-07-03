#!/bin/sh

ln -svF $PWD/vimrc ~/.vimrc
ln -svF $PWD/bash_profile ~/.bash_profile
ln -svF $PWD/git-completion.bash ~/.git-completion.bash
ln -svF $PWD/git-prompt.sh ~/.git-prompt.sh
ln -svF $PWD/gitconfig ~/.gitconfig

echo "DONE!"
