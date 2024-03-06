#!/bin/zsh

RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';

printf "${GREEN}>>> 6. customized env setup >>>${BLNAK}\n"

sudo snap install v2raya
sudo apt install v2ray
sudo systemctl enable snap.v2raya.v2raya.service



printf "${GREEN}<<< 6. customized env setup completed <<<${BLNAK}\n"
