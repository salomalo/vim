#!/bin/bash



unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ;;
    Darwin*)    ln -sf ~/.vim/.vimrc ~/.vimrc; ln -sf ~/.vim/.tmux.conf ~/.tmux.conf ;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     mklink .vimrc ~/;;
    *)          machine="UNKNOWN:${unameOut}"
esac
