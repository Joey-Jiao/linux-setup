#!/bin/zsh

# conda env
sudo curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
mkdir /home/$(whoami)/conda
zsh Miniforge3-$(uname)-$(uname -m).sh -b -p "/home/$(whoami)/conda"
sleep 2

source "/home/$(whoami)/conda/etc/profile.d/conda.sh"
conda activate
conda --version
