#!/bin/bash

echo "install python..."
sudo apt -y install python3
sudo apt -y install python3-venv
sudo apt -y install python3-pip
python3 -m pip install -U autopep8 --user