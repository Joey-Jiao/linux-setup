#!/bin/zsh

printf "${GREEN}>>> 5.3 setup nvm >>>${BLANK}\n"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/.zshrc
nvm -v

printf "${GREEN}>>> 5.3 setup nvm >>>${BLANK}\n"
