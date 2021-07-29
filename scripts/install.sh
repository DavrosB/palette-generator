#! bin/bash

# APT installs

sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv


#Create Python Virtual environment
python3 -m venv venv
source venv/bin/activate


#Perform PIP installation
pip3 install -r requirements.txt
pip3 install python3 pytest pytest-cov flask_testing

