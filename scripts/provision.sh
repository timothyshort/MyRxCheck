#!/bin/bash
sudo apt-get -y update

echo "******************"
echo "INSTALLING CHROME..."
sudo apt-get install -y chromium-chromedriver
sudo ln -s /usr/lib/chromium-browser/chromedriver /usr/bin/chromedriver
echo "FINISHED INSTALLING CHROME"

echo "******************"
echo "INSTALLING PYTHON PIP"
sudo apt-get install -y xvfb python-pip
echo "FINISHED INSTALLING PYTHON PIP"

echo "******************"
echo "INSTALLING CONDA"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p ~/miniconda
rm ~/miniconda.sh
echo "PATH=\$PATH:\$HOME/miniconda/bin" >> .bash_profile
echo "FINISHED INSTALLING CONDA"

echo "******************"
echo "CREATING CONDA ENVIRONMENT"
conda env create -f env.yml
source activate PySelPaM
pip install pyvirtualdisplay==0.2
pip install selenium==2.51.1
pip install Pillow
echo "FINISHED PREPARING CONDA ENVIRONMENT"