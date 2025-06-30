#!/bin/bash
sudo pacman -Syy --needed git base-devel nvim ccls 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Sy nvim-packer-git
curl -sL install-node.vercel.app/lts | sudo bash
mv -f ./nvim/ ~/.config/
