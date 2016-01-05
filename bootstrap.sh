#!/usr/bin/env bash

rm ~/.{bash_profile,bashrc,inputrc}
ln -s $PWD/dot-bashrc ~/.bashrc
ln -s $PWD/dot-inputrc ~/.inputrc
#ln -s $PWD/dot-bash_profile ~/.bash_profile
cp dot-bash_profile ~/.bash_profile

rm ~/.tmux.conf
ln -s $PWD/dot-tmux.conf ~/.tmux.conf

rm ~/.vim ~/.vimrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/dot-vimrc ~/.vimrc
