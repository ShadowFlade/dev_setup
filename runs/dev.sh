#!/usr/bin/env bash
# not sure if i need luarocks now but whatever
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install stylua

#golang
pushd /tmp/go1.23.3.linux-amd64
(
    wget --output-document /tmp/golang.tar.gz https://go.dev/dl/go1.23.3.linux-amd64.tar.gz
    tar zxpf /tmp/golang.tar.gz -C /tmp
    cd
    ./configure && make && sudo make install
)
popd

# luarocks
pushd /tmp/luarocks-3.11.0
(
    wget --output-document /tmp/luarocks.tar.gz https://luarocks.org/releases/luarocks-3.11.0.tar.gz
    tar zxpf /tmp/luarocks.tar.gz -C /tmp
    cd
    ./configure && make && sudo make install
)
popd

luarocks install luacheck
