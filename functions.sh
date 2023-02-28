#!/bin/zsh
# ------ Functions ------ #

function mid() {
    clear;
    echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
    eval $1
    echo -e "\n\n"
}

function lk() {
    arg="--depth=$1"
    lsd --tree $arg
}
