#!/bin/zsh

printf "${GREEN}>>> 5.1 setup c >>>${BLANK}\n"

sudo apt install build-essential cmake gdb autoconf automake libtool cpanminus bison ninja-build -y
sudo cpanm IPC:Cmd
sudo apt install python3-disutils gperf nasm -y
sudo apt install libx11-dev libxft-dev libxext-dev libdbus-1-dev libxi-dev libxtst-dev libgl1-mesa-dev libgles2-mesa-dev libglu1-mesa-dev libudev-dev libx11-xcb-dev libxcursor-dev libxdamage-dev libxinerama-dev libxrandr-dev -y
sudo apt install gcc-multilib -y

mkdir ${HOME}/
git clone https://github.com/microsoft/vcpkg  ${HOME}

printf "${GREEN}<<< 5.1 setup c <<<${BLANK}\n"
