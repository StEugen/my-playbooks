#!/bin/bash

# script to build LazyVim on ubuntu 22.04

sudo apt-get install ninja-build gettext cmake unzip curl build-essential

git clone https://github.com/neovim/neovim ~/

cd ~/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo

cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

git clone https://github.com/LazyVim/starter ~/.config/nvim/
