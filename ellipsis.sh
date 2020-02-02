#!/usr/bin/env bash

pkg.install() {
    pkg.pull
}

pkg.pull() {
    echo -e "\e[32mUpdating system...\e[0m"

    # Update all installed packages and package repositories
    if utils.cmd_exists apt-get; then
        sudo apt-get -y update && sudo apt-get -y upgrade
    fi

    echo -e "\e[32mDone system.\e[0m"
}