#!/bin/bash
StartDir = $(pwd)
sudo pacman -Syy --needed git base-devel nvim ccls man fzf
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Sy nvim-packer-git
curl -sL install-node.vercel.app/lts | sudo bash
cd StartDir 
sudo mandb
mv -f ./nvim/ ~/.config/
