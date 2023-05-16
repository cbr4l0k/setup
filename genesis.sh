#!/bin/bash

# Add NeRD fonts
mkdir -p ~/.fonts
wget -O temp.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip && unzip -q temp.zip -d ~/.fonts/ && rm temp.zip

# Install python requirements
python3 -m pip install -r requirements.txt

pick_os_and_run() {
  os=$(awk -F= '/^NAME/{print $2}' /etc/os-release | tr -d '"')
  
  case "$os" in
    "Manjaro Linux")
        ./manjaro.sh
      ;;
    "Debian GNU/Linux")
      echo "missing debian config xd"
      ;;
    *)
      echo "Unsupported OS: $os"
      ;;
  esac
}

# Install dependencies depending on the os
pick_os_and_run

# Symbolic links of config files
find "$(pwd)/config" -mindepth 1 -maxdepth 1 -type d -exec ln -sf {} $HOME/.config/ \;



