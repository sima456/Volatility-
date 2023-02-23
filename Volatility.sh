#!/bin/bash
#setup dir 
cd ~/

#phase-1
echo "Setting up pip2"
mkdir scripts && cd scripts
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
echo "Enter Sudo password is asked"
sleep 2
sudo python2 get-pip.py
pip2 install --upgrade setuptools
sudo apt-get install python-dev -y

#Phase-2 
clear 
echo "PIP installs"
pip2 install pycrypto
pip2 install distorm3

#phase-3 
clear
echo "Vol download & config"
git clone https://github.com/volatilityfoundation/volatility
cd volatility
sudo python setup.py install
