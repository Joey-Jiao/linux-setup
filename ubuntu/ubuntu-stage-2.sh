#!/bin/zsh

RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';

printf "${GREEN}>>> 5. specific env setup >>>${BLANK}\n"

zsh ./envs/ubuntu-c.sh
zsh ./envs/ubuntu-conda.sh
zsh ./envs/ubuntu-n.sh
zsh ./envs/ubuntu-java.sh

printf "${GREEN}<<< 5. specific env setup completed <<<${BLANK}\n"

#sudo reboot

