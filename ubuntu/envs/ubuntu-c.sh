#!/bin/zsh

printf "${GREEN}>>> 5.1 setup c >>>${BLANK}\n"

sudo apt install build-essential cmake gdb -y
sudo apt install gcc-multilib -y

printf "${GREEN}<<< 5.1 setup c <<<${BLANK}\n"
