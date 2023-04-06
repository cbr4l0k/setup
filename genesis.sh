#!/bin/bash

mkdir ~/.fonts
wget -O temp.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip && unzip -q temp.zip -d ~/.fonts/ && rm temp.zip
