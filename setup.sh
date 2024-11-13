#!/usr/bin/env bash
sudo apt -y update

if ! command -v git &> /dev/null; then
    sudo apt -y install git
fi

if [ ! -d $HOME/personal ]; then
    mkdir $HOME/Desktop/personal
fi

git clone https://github.com/ShadowFlade/dev_setup $HOME/Desktop/personal/dev_setup

pushd $HOME/Desktop/personal/dev_setup
./run.sh
popd

pushd $HOME/Desktop/personal/dev_setup
./links.sh
popd
