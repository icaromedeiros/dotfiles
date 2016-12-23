#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Symlinking .atom"
ln -sf $DIR/.atom ~/.atom

echo "Done."
