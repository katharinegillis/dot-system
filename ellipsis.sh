#!/usr/bin/env bash

pkg.install() {
    pkg.pull
}

pkg.pull() {
    echo -e "\e[32mUpdating system...\e[0m"

    # Update all installed packages and package repositories
    sudo apt-get update && sudo apt-get upgrade

    echo -e "\e[32mDone system.\e[0m"
}