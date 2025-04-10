#!/bin/bash

# Upgrade pip (good practice)
python3 -m pip install --upgrade pip

# Install TA-Lib (corrected)
wget https://github.com/ta-lib/ta-lib/releases/download/v0.6.3/ta-lib-0.6.3-src.tar.gz
tar -xzf ta-lib-0.6.3-src.tar.gz
cd ta-lib-0.6.3
./configure --prefix=/usr/local
make
sudo make install

# Navigate to your project directory
cd /workspaces/testing-new-py

# Create a virtual environment
python3 -m venv .venv

# Activate the virtual environment
source /workspaces/testing-new-py/.venv/bin/activate  # For Unix-based systems
# .venv\Scripts\activate  # For Windows

# Upgrade pip in the virtual environment
pip install --upgrade pip

# Install pkscreener and TA-Lib
pip install pkscreener==0.46.20250221.728 ta-lib
