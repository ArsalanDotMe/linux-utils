#!/bin/sh

if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root."
    exit 1
fi

apt install zsh -y

chsh -s $(which zsh)

sudo -u arsalan sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

add-apt-repository ppa:aacebedo/fasd -y
apt update
apt install fasd -y

sudo -u arsalan echo 'eval "$(fasd --init auto)"' >> ~/.zshrc
