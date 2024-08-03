#!/usr/bin/env bash
set -e -x

echo "Copying local vimrc to this repo"
cp ~/.vimrc ./.vimrc

echo "Staging changes to git"
git add .vimrc

if [ -z "$1" ]; then
    echo "No commit message was supplied. Exiting."
    exit 0
else
    echo "Committing changes"
    git commit -m "$1"
fi
