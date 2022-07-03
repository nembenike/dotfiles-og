#!/bin/bash
echo "This script will set up my dotfiles and install necessary packages."
mkdir pkgs
cd pkgs
sudo pacman -Syu git polybar ttf-font-awesome ttf-fira-code neovim scrot python-pywal
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S brave-bin zscroll spotify picom-jonaburg-git
mkdir ~/Screenshots
mkdir ~/dotfiles
cd ~/dotfiles
git clone https://github.com/benilol98/dotfiles
cd dotfiles
mv Wallpapers ~
mv .bashrc ~
cd .config
mv i3/config ~/.config/i3/config
mkdir ~/.config/picom
mv picom/picom.conf ~/.config/picom/picom.conf
cd polybar
mkdir ~/.config/polybar
sudo chmod +x launch.sh
mv launch.sh ~/.config/polybar/launch.sh
mv config.ini ~/.config/polybar/config.ini
sudo chmod +x scripts/get_spotify_status.sh
sudo chmod +x scripts/scroll_spotify_status.sh
mv scripts ~/.config/polybar
cd ~/.config
git clone https://github.com/lukesmithxyz/st
cd st
sudo make clean install
echo "Script is finished"