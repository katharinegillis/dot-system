#!/usr/bin/env bash

pkg.install() {
    pkg.pull
}

pkg.pull() {
    # Update all installed packages and package repositories
    sudo apt-get update && sudo apt-get upgrade
}