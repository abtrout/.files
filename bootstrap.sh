#!/usr/bin/env bash

rm -rf ~/.{bash_profile,bashrc,inputrc,tmux.conf,vim,vimrc}

# Our ~/.bash_profile will change depending on host OS.
# Instead of linking it, we copy it.
cp dot-bash_profile ~/.bash_profile

# Everything else gets linked to track (infrequent) changes.
ln -s $PWD/dot-bashrc ~/.bashrc
ln -s $PWD/dot-inputrc ~/.inputrc
ln -s $PWD/dot-tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim
ln -s $PWD/dot-vimrc ~/.vimrc
