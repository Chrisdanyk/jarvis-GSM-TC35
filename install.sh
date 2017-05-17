#!/usr/bin/env bash

# Install Python (python 2.7 and 3.x)
[[ -z $(which python) ]] && sudo apt-get install python
[[ -z $(which python2.7) ]] && sudo apt-get install python2.7
[[ -z $(which python3) ]] && sudo apt-get install python3

# Install pip
[[ -z $(which pip) ]] && sudo apt-get install python-pip
[[ -z $(which pip3) ]] && sudo apt-get install python3-pip

# Install pyserial (needed for the GSMTC35 python library)
sudo pip install pyserial
sudo pip3 install pyserial

# Copy latest version of GSM-TC35 python script
wget -P GSMTC35/ https://raw.githubusercontent.com/QuentinCG/GSM-TC35-Python-Library/master/GSMTC35/GSMTC35.py
