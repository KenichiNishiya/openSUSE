#!bin/bash

day=$(date +"%Y-%m-%dT%H%M%S")

cp ~/.config/alacritty/alacritty.yml ~/.config/bakap/alacritty/alacritty.yml-$day
cp ~/.config/bspwm/bspwmrc ~/.config/bakap/bspwm/bspwmrc-$day
cp ~/.config/dunst/dunstrc ~/.config/bakap/dunst/dunstrc-$day
cp ~/.config/polybar/config.ini ~/.config/bakap/polybar/config.ini-$day
cp ~/.config/polybar/launch.sh ~/.config/bakap/polybar/launch.sh-$day
cp ~/.config/rofi/config.rasi ~/.config/bakap/rofi/config.rasi-$day
cp ~/.config/sxhkd/sxhkdrc ~/.config/bakap/sxhkd/sxhkdrc-$day
cp ~/.config/nvim/init.vim ~/.config/bakap/nvim/init.vim-$day
cp ~/.zsh_aliases ~/.config/bakap/zsh_aliases/zsh_aliases-$day
cp ~/.profile ~/.config/bakap/profile/profile-$day
cp ~/.zshrc ~/.config/bakap/zshrc/zshrc-$day
cp ~/Documents/suse.sh ~/.config/bakap/suse/suse.sh-$day
sudo cp /etc/sddm.conf.d/sddm.conf ~/.config/bakap/sddm/sddm.conf-$day
sudo cp -r /usr/share/sddm/themes/sddm-sugar-candy ~/.config/bakap/sddm/
#cp ~/.config/compton.conf ~/.config/bakap/compton-$day
echo "Bakad up dot flies"

