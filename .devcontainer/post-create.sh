#!/bin/bash

# Upgrade pip (good practice)
python3 -m pip install --upgrade pip

# Install TA-Lib (corrected)
wget https://github.com/ta-lib/ta-lib/releases/download/v0.6.4/ta-lib-0.6.4-src.tar.gz
tar -xzf ta-lib-0.6.4-src.tar.gz
cd ta-lib-0.6.4-src
./configure --prefix=/usr/local  # Important: Specify a prefix!
make -j$(nproc)
make install

# Install TA-Lib's Python wrapper
pip install TA-Lib

echo "TA-Lib installation complete!"
