#! /bin/sh
RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';


uname_s=$(uname -s)
uname_n=$(uname -n)

printf "${GREEN}>>> installing cmd environment >>>${BLANK}\n";

#read -p ">>> enter corresponding username >>>" target_user;
#if id -u "$target_user" >/dev/null 2>&1; then
#    printf "${GREEN}>>> proceeding to setup >>>${BLANK}\n";
#else
#    exit 1;
#fi

printf "${GREEN}>>> installing cmd environment >>>${BLANK}\n";

# 1. test chsh

echo $SHELL
sudo apt install zsh -y
sleep 2
sudo chsh -s /bin/zsh
echo $SHELL

# 2. test install conda

