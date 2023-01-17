#!/bin/bash

REPO=~/re/git/openSUSE/
IN=~/.config/
OUT=~/re/git/openSUSE/config/

cp $IN'alacritty/alacritty.yml' $OUT'alacritty/alacritty.yml'
cp $IN'bspwm/bspwmrc' $OUT'bspwm/bspwmrc'
cp $IN'dunst/dunstrc' $OUT'dunst/dunstrc'
#cp $IN'picom/picom.conf' $OUT'picom/picom.conf'
cp $IN'polybar/config.ini' $OUT'polybar/config.ini'
cp $IN'polybar/launch.sh' $OUT'polybar/launch.sh'
cp $IN'rofi/config.rasi' $OUT'rofi/config.rasi'
cp $IN'sxhkd/sxhkdrc' $OUT'sxhkd/sxhkdrc'
cp $IN'waybar/config.jsonc' $OUT'waybar/config.jsonc'
cp $IN'waybar/style.css' $OUT'waybar/sytle.css'
cp $IN'hypr/hyprland.conf' $OUT'hypr/hyprland.conf'
cp $IN'wofi/config' $OUT'wofi/config'
cp $IN'wofi/style.css' $OUT'wofi/style.css'

cp ~/Documents/suse.sh $REPO 
cp ~/.vimrc $REPO'vimrc'
cp ~/.zsh_aliases $REPO'zsh_aliases'
cp ~/.zprofile $REPO'zprofile'
cp ~/.zshrc $REPO'zshrc'

cp -r ~/'.config/bakap/' $REPO
cp -r /home/yori/Documents/scripts/* $REPO'scripts/'
cp $IN'nvim/init.vim' $OUT'nvim/init.vim'
sudo cp /etc/sddm.conf.d/sddm.conf $OUT'sddm/sddm.conf' 
cp -r /usr/share/sddm/themes/sddm-sugar-candy $OUT'sddm/'

cd $REPO
echo "Changed directory to $(pwd)"
git add .
git commit -m "Updated"
git push origin main
