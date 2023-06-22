#!/bin/bash

if [ ! -e $HOME/.vimrc ]; then
    cp ./vimrc $HOME/.vimrc
    echo "[INFO] vimrcを $HOME/.vimrc にコピーしました"
fi
