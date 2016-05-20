#!/usr/bin/env bash

# Prompt before removing existing files
rm -ri ~/.{bash_profile,bashrc,inputrc,tmux.conf,vim,vimrc}

ln -s $PWD/shell/.bashrc ~/.bashrc
ln -s $PWD/shell/.inputrc ~/.inputrc

# Terminal.app starts a login shell, so settings need to
# be manually sourced from ~/.bashrc
if [[ $(uname) == "Darwin" ]]; then
  ln -s $PWD/shell/.bash_profile ~/.bash_profile
fi

ln -s $PWD/vim ~/.vim
ln -s $PWD/vim/.vimrc ~/.vimrc
ln -s $PWD/tmux/.tmux.conf ~/.tmux.conf
