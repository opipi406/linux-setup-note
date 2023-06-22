#!/bin/bash

if [ ! -e $HOME/.gitconfig ]; then
    cp ./gitconfig $HOME/.gitconfig
    echo "[INFO] gitconfigを $HOME/.gitconfig にコピーしました"
fi

if [ ! -e $HOME/.gitignore_global ]; then
    cp ./gitignore_global $HOME/.gitignore_global
    echo "[INFO] gitignore_globalを $HOME/.gitignore_global にコピーしました"
fi
