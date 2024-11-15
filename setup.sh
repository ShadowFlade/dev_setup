#!/bin/bash/
sudo apt -y update

if ! command -v git &> /dev/null; then
    sudo apt -y install git
fi

if [ ! -d $HOME/Desktop/personal ]; then
    mkdir $HOME/Desktop/personal
fi
if [ ! -d $HOME/Desktop/work ]; then
    mkdir $HOME/Desktop/work
fi

git clone https://github.com/ShadowFlade/dev_setup $HOME/Desktop/personal/dev_setup
git clone https://github.com/ShadowFlade/dotfiles $HOME/Desktop/personal/dotfiles


pushd $HOME/Desktop/personal/dev_setup
chmod +x ./run.sh
/bin/bash ./run.sh
popd

pushd $HOME/Desktop/personal/dev_setup
chmod +x ./links.sh
/bin/bash ./links.sh
popd

pushd $HOME/Downloads
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
popd
