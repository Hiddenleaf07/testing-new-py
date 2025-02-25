#!/bin/bash

# Upgrade pip (good practice)
python3 -m pip install --upgrade pip

# Install TA-Lib (corrected)
wget https://github.com/ta-lib/ta-lib/releases/download/v0.6.3/ta-lib-0.6.3-src.tar.gz
tar -xzf ta-lib-0.6.3-src.tar.gz
cd /workspaces/testing-new-py/ta-lib-0.6.3
./configure --prefix=/usr/local  # Important: Specify a prefix!
make
sudo make install

# Install TA-Lib's Python wrapper
pip install TA-Lib

echo "TA-Lib installation complete!"
