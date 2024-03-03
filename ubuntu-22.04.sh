#!/bin/bash

RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';

## env
#read -p ">>> enter corresponding username >>>" target_user;
#if id -u "$target_user" >/dev/null 2>&1; then
#    printf "${GREEN}>>> 1. env setup >>>${BLANK}\n";
#else
#    exit 1;
#fi
#uname_s=$(uname -s)
#uname_m=$(uname -m)

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
sudo apt install docker curl nfs-common preload -y
printf "${GREEN}<<< 2. packages installed <<<${BLANK}\n";

# zsh
printf "${GREEN}>>> 3. installing cmd environment >>>${BLANK}\n";
sudo apt install zsh -y
sleep 2
sudo chsh -s /bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sleep 2

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
printf "${GREEN}<<< 3. cmd environment installed <<<${BLANK}\n";

# language env
printf "${GREEN}>>> 4. specific env setup >>>${BLANK}\n"
zsh ./ubuntu-22.04-c.sh
zsh ./ubuntu-22.04-conda.sh
zsh ./ubuntu-22.04-n.sh
zsh ./ubuntu-22.04-java.sh
printf "${GREEN}<<< 4. specific env setup completed <<<${BLANK}\n"


#sudo reboot

