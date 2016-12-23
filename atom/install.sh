#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Symlinking .atom"
ln -sf $DIR/.atom ~/

echo "[WARNING] Now open atom, install package-sync and run Package Sync: sync on Command Palette"
echo "[WARNING] Then, restart Atom..."
echo "Done."
