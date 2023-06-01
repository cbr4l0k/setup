#!/bin/bash

pushd ~
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
popd

# Text editors and terminal tools 
paru -s --noconfirm neovim tmux alacritty-git
sudo pacman -S nushell starship

# Productivity and Tools
paru -S --noconfirm obsidian unzip sudo 
sudo pacman -S jq w3m

# Programming and Development
paru -S --noconfirm julia 

# Workflow
paru -S --noconfirm bat lsd rofi rofi-emoji rofi-calc

# MISC
paru -S --noconfirm brave-bin clementine telegram-desktop-git
