#!/usr/bin/env bash

pkg.install() {
    # Update the OS packages
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}

pkg.pull() {
    # Pull down package updates
    git.pull

    # Update the OS packages
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}