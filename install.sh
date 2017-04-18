#!/usr/bin/env bash

# Install Python (python 2.7 and 3.x)
[[ -z $(which python) ]] && sudo apt-get install python
[[ -z $(which python2.7) ]] && sudo apt-get install python2.7
[[ -z $(which python3) ]] && sudo apt-get install python3

# Copy latest version of GSM-TC35 python script
wget -P plugins/jarvis-GSM-TC35/GSMTC35/GSMTC35.py https://raw.githubusercontent.com/QuentinCG/GSM-TC35-Python-Library/master/GSMTC35/GSMTC35.py
