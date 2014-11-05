#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing profile for iTerm (please restart iTerm)..."
cp $DIR/com.googlecode.iterm2.plist ~/Library/Preferences
echo "Done."

