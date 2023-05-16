#!/bin/bash

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S  neovim tmux julia rofi bat lsd rofi-emoji rofi-calc brave-bin obsidian alacritty-git clementine
