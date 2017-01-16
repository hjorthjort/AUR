#!/bin/bash
set -eu

function add {
    git submodule add https://aur.archlinux.org/"$1"
}

function update {
    git submodule foreach 'git pull'
}

