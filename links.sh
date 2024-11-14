#!/usr/bin/env bash


sudo rm -rf /etc/i3 &> /dev/null
sudo ln -s $HOME/Desktop/personal/dotfiles/i3 /etc/i3


if [ ! -d $HOME/.local/share/applications ]; then
    sudo mkdir -p $HOME/.local/share/applications
fi
sudo rm $HOME/.local/share/applications/obsidian.desktop &> /dev/null
sudo ln -s $HOME/Desktop/personal/dotfiles/.desktop/obsidian.desktop $HOME/.local/share/applications/obsidian.desktop &> /dev/null

sudo rm -rf /etc/nvim &> /dev/null
sudo rm -rf ~/.config/nvim &> /dev/null
sudo  ln -s $HOME/Desktop/personal/dotfiles/nvim /etc/nvim
sudo  ln -s $HOME/Desktop/personal/dotfiles/nvim ~/.config/nvim


sudo rm $HOME/.zshrc &> /dev/null
sudo ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh/.zshrc $HOME/.zshrc
sudo rm -rf $HOME/oh-my-zsh/ &> /dev/null
sudo ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh/ $HOME/oh-my-zsh
