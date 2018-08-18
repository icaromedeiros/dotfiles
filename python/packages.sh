#!/usr/bin/env bash

type pip >/dev/null 2>&1 ||
    { echo >&2 "pip is required. Run 'make packages' to install it via brew."; exit 1; }

echo "Installing Python global packages..."
# Pip-related
pip install --upgrade setuptools
pip install --upgrade pip

# Data Science tools
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install seaborn
pip install scipy
pip install scikit-learn
pip install jupyter
pip install py4j # for pyspark

echo "Done."
