tar c . --exclude .git --exclude install.sh --exclude install_dependencies.sh | tar xv --owner root --group root -C /
