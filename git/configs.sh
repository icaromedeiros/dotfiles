#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Symlinking .gitconfig..."
ln -sf $DIR/.gitconfig ~/.gitconfig

echo "Configuring credential manager for Azure DevOps"
git-credential-manager-core configure

echo "Done."
