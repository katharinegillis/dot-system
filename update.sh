#!/usr/bin/env bash

# Update OS packages
sudo apt-get -y update
sudo apt-get -y upgrade

# Ensure ssh-askpass exists
sudo apt install ssh-askpass
