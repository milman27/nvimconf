#!/bin/bash
if [ whoami != 'root' ] 
then
    echo 'Please run as root'
    exit
fi    

pacman -Syy nvim ccls 
curl -sL install-node.vercel.app/lts | bash
mv -rf ./nvim/ /home/$SUDO_USER/.config/
