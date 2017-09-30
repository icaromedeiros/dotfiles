#!/bin/sh

echo "aa"

pip install jupyter_contrib_nbextensions

jupyter nbextension enable --py --sys-prefix widgetsnbextension
