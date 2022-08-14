#!/usr/bin/env bash

# Update OS packages
sudo apt-get -y update
sudo apt-get -y upgrade

if [ ! -f "$HOME/.ssh/config" ]; then
    touch "$HOME/.ssh/config"
    chmod 0600 "$HOME/.ssh/config"
fi

if ! grep -Fxq "AddKeysToAgent yes" "$HOME/.ssh/config"; then
    {
        echo ""
        echo "AddKeysToAgent yes"
    } >> "$HOME/.ssh/config"
fi