#!/bin/bash

clear

echo "Adding some bling in termux"
echo
echo
echo "Updating..."
echo

pkg update
echo
echo
echo "Setting up darkmode and some usability hacks"
echo
echo
touch ~/.termux/termux.properties

echo -e ‘use-black-ui = true’ >> ~/.termux/termux.properties 
echo -e 'shortcut.create-session = ctrl + t' >>  ~/.termux/termux.properties
echo -e 'shortcut.next-session = ctrl + 2' >>  ~/.termux/termux.properties
echo -e 'shortcut.previous-session = ctrl + 1' >>  ~/.termux/termux.properties
echo
echo
echo
echo "Installing ZSH and git"
echo
echo
pkg install zsh git
echo
echo
echo "Installing Oh-my-zsh.."
echo
echo

pkg install wget  
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

