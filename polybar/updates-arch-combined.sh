#!/bin/sh

if ! updates=$(sudo pacman -Syu> /dev/null | wc -l ); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "# $updates"
else
    echo ""
fi
