#! /bin/sh
RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';

# 1. test chsh

echo $SHELL
sudo apt install zsh -y
sleep 2
sudo chsh -s /bin/zsh
echo $SHELL

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sleep 2

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# 2. test install conda

echo done
