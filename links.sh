#!/usr/bin/env bash

if [ ! -d /etc/i3 ]; then
    ln -s $HOME/personal/dotfiles/i3 /etc/i3
fi


if [ ! -d $HOME/.local/share/applications ]; then
    mkdir -p $HOME/.local/share/applications;
    ln -s $HOME/personal/dotfiles/.desktop/obsidian.desktop $HOME/.local/share/applications/
fi

if [ ! -d /etc/nvim]; then
    ln -s $HOME/Desktop/personal/dotfiles/nvim /etc/nvim
fi

ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh/.zshrc $HOME/.zshrc
ln -s $HOME/Desktop/personal/dotfiles/oh-my-zsh/ $HOME/oh-my-zsh
