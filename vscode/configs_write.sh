#!/bin/sh

echo "Will copy settings.json into global VSCode settings file..."

SETTINGS_FILE="$HOME/Library/Application Support/Code/User/settings.json"
OLD_SETTINGS="$HOME/Library/Application Support/Code/User/old_global_settings.json"

echo "Moving current settings to ${OLD_SETTINGS}..."

mv "$SETTINGS_FILE" "$OLD_SETTINGS"

echo "Copying new settings..."

cp vscode/settings.json "$SETTINGS_FILE"

echo "..Done."