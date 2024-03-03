#!/bin/zsh

# conda env
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
mkdir ${HOME}/conda
zsh Miniforge3-$(uname)-$(uname -m).sh -b -p "${HOME}/conda"
sleep 2
source "${HOME}/conda/etc/profile.d/conda.sh"
conda activate
conda --version
