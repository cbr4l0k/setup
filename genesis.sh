#!/bin/bash

# Config. github 
read -p "Github username: " USERNAME
read -p "Github email: " USEREMAIL
git config --global user.name $USERNAME
git config --global user.email $USEREMAIL

# Symbolic links of config files
find "$(pwd)/config" -mindepth 1 -maxdepth 1 -exec ln -sf {} $HOME/.config/ \;
# Symbolic links of dotfiles
find "$(pwd)/dotfiles" -mindepth 1 -maxdepth 1 -exec ln -sf {} $HOME/ \;

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

# Set defaults
xdg-settings set default-web-browser brave-browser.desktop

# Config second brain
pushd $HOME/Documents
git clone https://github.com/cbr4l0k/cbr4l0k 
popd

# Symbolic links of personal scripts
find "$(pwd)/scripts" -mindepth 1 -maxdepth 1 -type f -exec chmod +x {} \;
find "$(pwd)/scripts" -mindepth 1 -maxdepth 1 -exec ln -sf {} $HOME/.local/bin/ \;

# Install nvim packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh theme: spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Add NeRD fonts
mkdir -p ~/.fonts
wget -O temp.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip && unzip -q temp.zip -d ~/.fonts/ && rm temp.zip
