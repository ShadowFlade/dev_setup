#!/usr/bin/env bash
sudo apt -y update
sudo apt -y install git fzf ripgrep pavucontrol xclip jq flameshot python3-pip i3 zsh picom tmux alacritty feh
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

