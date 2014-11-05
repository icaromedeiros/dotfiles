#!/usr/bin/env bash
type pip >/dev/null 2>&1 ||
    { echo >&2 "pip is required. Run 'make packages' to install it via brew."; exit 1; }

echo "Installing Python global packages..."
pip install virtualenvwrapper
pip install pep8
pip install flake8
echo "Done."
