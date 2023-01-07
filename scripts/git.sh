#!/bin/bash

HOME=/home/yori/
REPO=/home/yori/re/git/Fedora/
IN=/home/yori/.config/
OUT=/home/yori/re/git/Fedora/config/

cp $IN'alacritty/alacritty.yml' $OUT'alacritty/alacritty.yml'
cp $IN'bspwm/bspwmrc' $OUT'bspwm/bspwmrc'
cp $IN'dunst/dunstrc' $OUT'dunst/dunstrc'
#cp $IN'picom/picom.conf' $OUT'picom/picom.conf'
cp $IN'polybar/config.ini' $OUT'polybar/config.ini'
cp $IN'polybar/launch.sh' $OUT'polybar/launch.sh'
cp $IN'rofi/config.rasi' $OUT'rofi/config.rasi'
cp $IN'sxhkd/sxhkdrc' $OUT'sxhkd/sxhkdrc'
cp $HOME'Documents/fedora.sh' $REPO 
cp $HOME'.vimrc' $REPO'vimrc'
cp $HOME'.zsh_aliases' $REPO'zsh_aliases'
cp $HOME'.profile' $REPO'profile'
cp $HOME'.zshrc' $REPO'zshrc'
#cp $IN'compton.conf' $REPO'compton.conf'

cp -r $HOME'.config/bakap/' $REPO
cp -r /home/yori/Documents/scripts/* $REPO'scripts/'
cp $IN'nvim/init.vim' $OUT'nvim/init.vim'
sudo cp /etc/sddm.conf.d/sddm.conf $OUT'sddm/sddm.conf' 
cp -r /usr/share/sddm/themes/sddm-sugar-candy $OUT'sddm/'

cd $REPO
echo "Changed directory to $(pwd)"
git add .
git commit -m "Updated"
git push origin main
