#!/bin/zsh

printf "${GREEN}>>> 5.1 setup c >>>${BLANK}\n"

sudo apt install build-essential cmake gdb autoconf-archive automake libtool cpanminus bison -y
sudo cpanm IPC:Cmd
sudo apt install libgdal-dev pkg-config libpq-dev libpq5 -y
sudo apt install gcc-multilib -y

mkdir ${HOME}/
git clone https://github.com/microsoft/vcpkg  ${HOME}

printf "${GREEN}<<< 5.1 setup c <<<${BLANK}\n"
