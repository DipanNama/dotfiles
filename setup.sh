#!/bin/bash

mkdir -p ~/.backup/backup/
mkdir -p ~/_d4rk_c0d3/

cp ~/dotfiles/bash.bashrc ~/.backup/backup/
cp -rf ~/dotfiles/.vim/ ~/.backup/backup/
cp ~/dotfiles/.vimrc ~/.backup/backup/
cp -rf ~/dotfiles/.termux/ ~/.backup/backup/
cp -rf ~/dotfiles/.scripts/ ~/.backup/backup/
cp -rf ~/_d4rk_c0d3/ ~/.backup/backup/

# EOF(MAIN)
cp -rf  ~/.backup/ /sdcard/ 2>/dev/null

cd && cd dotfiles && chmod +x * 

source ~/dotfiles/install.sh
