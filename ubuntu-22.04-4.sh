#!/bin/zsh

# conda env
printf "${GREEN}>>> 4. installing conda env >>>${BLANK}\n"
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
mkdir ${HOME}/conda
zsh Miniforge3-$(uname)-$(uname -m).sh -b -p "${HOME}/conda"
sleep 2
source "${HOME}/conda/etc/profile.d/conda.sh"
conda activate
conda --version
printf "${GREEN}<<< 4. conda env installed <<<${BLANK}\n"

