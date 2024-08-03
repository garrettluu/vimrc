#!/usr/bin/env bash
set -e -x

# Pulls updates from upstream and copies them to ~/.vimrc
pull_from_upstream=true
while getopts 'nh' opt; do
    case "$opt" in
        n)
            pull_from_upstream=false
            ;;
        ?|h)
            echo "This script pulls changes from upstream and copies them to ~/.vimrc"
            exit 0
            ;;
    esac
done

if [ $pull_from_upstream = true ]; then
    git pull
fi

# Replace
cp ./.vimrc ~/.vimrc
