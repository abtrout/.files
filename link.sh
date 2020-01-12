#!/usr/bin/env bash

rm -ri ~/.{bash_profile,bashrc,inputrc}
ln -s $PWD/shell/.bash_profile ~/.bash_profile
ln -s $PWD/shell/.bashrc ~/.bashrc
ln -s $PWD/shell/.inputrc ~/.inputrc

rm -ri ~/.{tmux,tmux.conf}
ln -s $PWD/tmux ~/.tmux
ln -s $PWD/tmux/.tmux.conf ~/.tmux.conf

rm -ri ~/.{vim,vimrc}
ln -s $PWD/vim ~/.vim
ln -s $PWD/vim/.vimrc ~/.vimrc
