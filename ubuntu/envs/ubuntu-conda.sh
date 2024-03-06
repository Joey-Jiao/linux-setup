#!/bin/zsh

printf "${GREEN}>>> 5.2 setup conda >>>${BLANK}\n"

sudo apt install python2

sudo curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
#mkdir /home/$(whoami)/conda
sh Miniforge3-$(uname)-$(uname -m).sh -b -p "/home/$(whoami)/conda"
sleep 2

source "/home/$(whoami)/conda/etc/profile.d/conda.sh"
conda activate
conda --version

printf "${GREEN}<<< 5.2 setup conda <<<${BLANK}\n"
