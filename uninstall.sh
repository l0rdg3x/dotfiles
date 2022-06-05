#!/bin/sh

#Uninstall script

#Unlink tmux conf
unlink ~/.tmux.conf

#Remove vimrc
rm -rf ~/.vim_runtime
rm -rf ~/.vimrc

#Remove ohmyzsh
rm -rf ~/.oh-my-zsh
rm -rf ~/.zshrc
