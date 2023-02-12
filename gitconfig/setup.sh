#!/bin/bash

if [ ! -e $HOME/.gitconfig ]; then
  cp ./gitconfig $HOME/.gitconfig
  echo setup $HOME/.gitconfig
fi

if [ ! -e $HOME/.gitignore_global ]; then
  cp ./gitignore_global $HOME/.gitignore_global
  echo setup $HOME/.gitignore_global
fi
