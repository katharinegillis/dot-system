#!/usr/bin/env bash

SYSTEM=$3

# Update OS packages
if [ "$SYSTEM" == "mac" ]; then
    brew update
    brew upgrade
else
    sudo apt-get -y update
    sudo apt-get -y upgrade
fi