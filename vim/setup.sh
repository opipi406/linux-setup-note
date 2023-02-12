#!/bin/bash

if [ ! -e $HOME/.vimrc ]; then
  cp ./vimrc $HOME/.vimrc
  echo setup $HOME/.vimrc
fi
