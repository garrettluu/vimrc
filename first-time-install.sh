#!/usr/bin/env bash
set -e -x

# By cloning from github, we always get the latest version
echo "Cloning vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copying .vimrc to ~/.vimrc"
cp ./.vimrc ~/.vimrc

# Errors get ignored :)
echo "Installing plugins"
vim +'PlugInstall --sync' +qa
