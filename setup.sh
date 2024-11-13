#!/usr/bin/env bash
sudo apt -y update

if ! command -v git &> /dev/null; then
    sudo apt -y install git
fi

if [ ! -d $HOME/personal ]; then
    mkdir $HOME/personal
fi

git clone https://github.com/ShadowFlade/dev_setup $HOME/personal/dev_setup

pushd $HOME/personal/dev_setup
./run
popd
