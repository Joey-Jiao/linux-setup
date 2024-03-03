#!/bin/bash

RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';

# env setup
printf "${GREEN}>>> 1. env setup >>>${BLANK}\n";

cp /etc/apt/sources.list /etc/apt/sources.list.copy
sed -i "s@https://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list

sudo apt update -y
sudo apt full-upgrade -y
sudo apt autoremove -y

printf "${GREEN}<<< 1. env setup completed <<<${BLANK}\n";


# pkgs
printf "${GREEN}>>> 2. installing packages >>>${BLANK}\n";
sudo apt install vim neovim docker curl nfs-common preload -y
printf "${GREEN}<<< 2. packages installed <<<${BLANK}\n";


# zsh
printf "${GREEN}>>> 3. installing cmd environment >>>${BLANK}\n";
sudo apt install zsh -y
sleep 2
#chsh -s /bin/zsh
sudo usermod -s /usr/bin/zsh $(whoami)
printf "${GREEN}<<< 3. cmd environment installed <<<${BLANK}\n";


#sudo reboot

