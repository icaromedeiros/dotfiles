#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing JShint..."
sudo npm install jshint --global

echo "Installing .jshintrc..."
ln -s $DIR/.jshintrc ~/.jshintrc

echo "Done." 