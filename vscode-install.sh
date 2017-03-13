#!/bin/sh

cd ~/utils
wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O vscode.deb
dpkg -i vscode.deb
apt install gconf2
apt install -f
rm vscode.deb
