#!/bin/zsh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sleep 2

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp ~/.zshrc ~/.zshrc.copy
sed -i "s@robbyrussell@powerlevel10k/powerlevel10k@g" ~/.zshrc
source ~/.zshrc



