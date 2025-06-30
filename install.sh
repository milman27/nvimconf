#!/bin/bash
if [ whoami != 'root' ] 
then
    echo 'Please run as root'
    exit
fi    
pacman -Syy nvim ccls git 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
curl -sL install-node.vercel.app/lts | bash
mv -rf ./nvim/ /home/$SUDO_USER/.config/
