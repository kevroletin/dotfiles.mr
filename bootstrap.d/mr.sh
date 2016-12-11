#!/bin/sh

pushd $HOME; sudo apt-get update

PACKAGES="git myrepos vcsh"
echo "=== Installing $PACKAGES ==="
sudo apt-get install $PACKAGES

git config --global user.name "Vasiliy Kevroletin"
git config --global user.email kevroletin@gmail.com
git config --global push.default simple

vcsh clone https://github.com/vkevroletin/dotfiles.mr
mkdir ~/.config/mr/config.d
echo "===="
echo "You should create symlinks ~/.config/mr/available.d -> ~/.config/mr/config.d"
echo "and then run 'mr checkout'"
