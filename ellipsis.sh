#!/usr/bin/env bash

pkg.install() {
    # Update the OS packages
    updateOSPackages
}

pkg.pull() {
    # Pull down package updates
    git.pull

    # Update the OS packages
    updateOSPackages
}

updateOSPackages() {
    # Update all installed packages and package repositories
    if utils.cmd_exists apt-get; then
        sudo apt-get -y update && sudo apt-get -y upgrade
    fi
}