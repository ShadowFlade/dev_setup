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
sudo  ln -s $HOME/Desktop/personal/dotfiles/nvim ~/.config/nvim


sudo rm $HOME/.zshrc &> /dev/null
sudo rm -rf $HOME/oh-my-zsh &> /dev/null
sudo ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh $HOME/oh-my-zsh
sudo ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh/.zshrc $HOME/.zshrc
sudo rm -rf $HOME/.oh-my-zsh/custom &> /dev/null
sudo ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh/custom $HOME/.oh-my-zsh/custom
sudo rm -f $HOME/.bash_profile
sudo ln -s $HOME/Desktop/personal/dotfiles/.bash_profile ~/.bash_profile


if [ ! -d $HOME/Pictures/personal ]; then
    sudo mkdir -p $HOME/Pictures/personal
fi

sudo rm -rf ~/Pictures/personal/wallpaper
sudo ln -s ~/Desktop/personal/dotfiles/wallpaper ~/Pictures/personal/wallpaper

if [ ! -d $HOME/.config ]; then
    sudo mkdir -p $HOME/.config
fi
sudo rm -rf ~/.config/picom
sudo ln -s ~/Desktop/personal/dotfiles/picom ~/.config/picom

sudo rm -f ~/.tmux.conf
sudo rm -f ~/tmux.conf
sudo ln -s ~/Desktop/personal/dotfiles/tmux/.tmux.conf ~/.tmux.conf
sudo ln -s ~/Desktop/personal/dotfiles/tmux/.tmux.conf ~/tmux.conf
sudo rm -f $HOME/.local/bin/scripts/tmux-sessionizer &> /dev/null

if [ ! -d $HOME/.local/bin/scripts/tmux-sessionizer ]; then
    sudo mkdir -p $HOME/.local/bin/scripts
fi
sudo ln -s $HOME/Desktop/personal/dotfiles/tmux/scripts/tmux-sessionizer $HOME/.local/bin/scripts/tmux-sessionizer
