#!/bin/bash

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S  neovim tmux
paru -S  bat lsd rofi  rofi-emoji rofi-calc
paru -S  brave-bin 
paru -S  obsidian alacritty-git clementine 
paru -S  julia 
