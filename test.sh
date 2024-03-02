#! /bin/sh
RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
BLANK='\033[0m';


uname_s=$(uname -s)
uname_n=$(uname -n)

echo $SHELL
printf "${GREEN}>>> installing cmd environment >>>${BLANK}\n";

#read -p ">>> enter corresponding username >>>" target_user;
#if id -u "$target_user" >/dev/null 2>&1; then
#    printf "${GREEN}>>> proceeding to setup >>>${BLANK}\n";
#else
#    exit 1;
#fi

printf "${GREEN}>>> 3. installing cmd environment >>>${BLANK}\n";
sudo apt install zsh -y
sleep 2
sudo chsh -s /bin/zsh
echo $SHELL
