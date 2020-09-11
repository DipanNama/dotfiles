#!/usr/bin/bash

# MAIN
cp -rf /sdcard/.backup/ ~/


cp /sdcard/.backup/backup/bash.bashrc ~/../usr/etc/
cp -rf /sdcard/.backup/backup/.vim ~/
cp /sdcard/.backup/backup/.vimrc ~/
cp -rf /sdcard/.backup/backup/.termux/ ~/
cp -rf /sdcard/.backup/backup/_d4rk_c0d3/ ~/
cp -rf /sdcard/.backup/backup/.scripts ~/../usr/etc/

green='\033[01;32mh'

function install(){
    echo -e "\033[01;32m [+] Installing $1\033[0m"
    pkg install $1
}

pkgList=("bat" "file" "nano" "wget" "python" "php" "vim" "coreutils" "gdb" "hexdump" "hexedit" "exiftool" "ruby" "git" "fish")

# Auto Install required tools

for pkg in ${pkgList[*]}; do
     install $pkg
done

# Install some python packages

pip install lolcat

