#!/bin/bash

echo
echo
echo "Installing modules:"
echo
echo "Get syntax highlighting"
echo

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Type ahead hinting"
echo

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions  

echo "Install znap"
echo

git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git
source zsh-snap/install.zsh

echo
echo "Installing neofetch"
echo 

pkg install neofetch

echo "Customizing startup prompt"
echo

touch ~/.hushlogin

echo "Modifying .zshrc file"
echo 
echo

wget https://github.com/vinzmhir/zshrc/blob/main/.zshrc
