#!/bin/bash
set -eu

function install {
    cd $1 && $PAGER PKGBUILD && makepkg -sirc
}

function add {
    git submodule add https://aur.archlinux.org/"$1"
}

function update {
    git submodule foreach 'git pull'
}

$1 $2
