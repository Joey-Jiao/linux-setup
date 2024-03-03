#!/bin/zsh

# language env
printf "${GREEN}>>> 5. specific env setup >>>${BLANK}\n"
zsh ./envs/ubuntu-c.sh
zsh ./envs/ubuntu-conda.sh
zsh ./envs/ubuntu-n.sh
zsh ./envs/ubuntu-java.sh
printf "${GREEN}<<< 5. specific env setup completed <<<${BLANK}\n"


#sudo reboot

