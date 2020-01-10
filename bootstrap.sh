#!/usr/bin/env bash

# Prompt before removing existing files
rm -ri ~/.{bash_profile,bashrc,inputrc,tmux.conf,vim,vimrc,hammerspoon}

# Terminal.app starts a login shell, so settings need to
# be manually sourced from ~/.bashrc
if [[ $(uname) == "Darwin" ]]; then
  ln -s $PWD/shell/.bash_profile ~/.bash_profile
fi

# Everything else gets symlinked to the appropriate place
ln -s $PWD/shell/.bashrc ~/.bashrc
ln -s $PWD/shell/.inputrc ~/.inputrc
ln -s $PWD/tmux/.tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim
ln -s $PWD/vim/.vimrc ~/.vimrc
