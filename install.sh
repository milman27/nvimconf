#!/bin/bash
if [ $(whoami) != 'root' ] 
then
    echo 'Please run as root'
    exit
fi    
pacman -Syy n--needed git base-devel vim ccls 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Sy nvim-packer-git
curl -sL install-node.vercel.app/lts | bash
mv -f ./nvim/ /home/$SUDO_USER/.config/
