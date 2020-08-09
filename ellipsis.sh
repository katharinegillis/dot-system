#!/usr/bin/env bash

pkg.link() {
    fs.link_files files
}

pkg.install() {
    # Update the OS packages
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}

pkg.pull() {
    # Check for updates on git
    git remote update 2>&1 > /dev/null
    if git.is_behind; then
        # Pull down package updates
        git.pull
    fi

    # Update the OS packages
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC"
}
